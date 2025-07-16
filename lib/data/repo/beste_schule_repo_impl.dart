import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:school_app/data/models/oauth_repo_impl_webview.dart';
import 'package:school_app/domain/models/interval.dart';
import 'package:school_app/domain/models/school_year.dart';
import 'package:school_app/utils/time_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/widgets.dart';
import 'package:school_app/domain/models/beste_schule_user.dart';
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/domain/models/grade.dart';
import 'package:school_app/domain/models/subject.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/utils/logger.dart';
import 'package:school_app/utils/global_dialog.dart';

class BesteSchuleRepoImpl extends WidgetsBindingObserver
    implements BesteSchuleRepo {
  static final BesteSchuleRepoImpl _instance = BesteSchuleRepoImpl._internal();
  factory BesteSchuleRepoImpl() => _instance;
  BesteSchuleRepoImpl._internal() {
    _loadAllDataFromPrefs();
    WidgetsBinding.instance.addObserver(this);
  }
  static BesteSchuleRepoImpl get instance => _instance;

  final String _BASE_URL = "beste.schule";
  final BesteSchuleOauthWebviewRepoImpl clientImpl =
      BesteSchuleOauthWebviewRepoImpl();

  BesteSchuleStudent? _student;
  List<SchoolYear> _years = [];
  SchoolYear? _selectedYear;
  Map<SchoolYear, Map> _allData = {};
  Map<DateString, List> _weekData = {};

  //TODO reload after specific time

  // Debounce for error dialogs
  DateTime? _lastErrorDialogTime;
  String? _lastErrorDialogMessage;
  static const Duration _errorDialogDebounce = Duration(seconds: 5);

  Future<String?> getAPIKey() async {
    final key = await clientImpl.getToken();

    if (key == null || key.isEmpty) {
      logger.e("[API] ERROR: API KEY is missing.");
      _debouncedShowGlobalErrorDialog("API KEY is missing.");
      return null;
    }

    return key;
  }

  Future<dynamic> getFromAPI({
    required String route,
    Map<String, dynamic>? params,
  }) async {
    final key = await getAPIKey();

    if (key == null || key.isEmpty) {
      logger.e("[API] ERROR: API KEY is missing.");
      _debouncedShowGlobalErrorDialog("API KEY is missing.");
      return null;
    }

    final headers = {
      'Authorization': 'Bearer $key',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    try {
      var resp = await http.get(
        Uri.https(_BASE_URL, route, params),
        headers: headers,
      );

      if (resp.statusCode == 200) {
        return jsonDecode(resp.body);
      } else {
        logger.e(
          "[API] ERROR: Error fetching $route from API, with these arguments: ${params.toString()}",
        );
        _debouncedShowGlobalErrorDialog(
          "Error fetching $route from API. Status code: ${resp.statusCode}",
        );
        return null;
      }
    } catch (e) {
      logger.e(
        "[API] ERROR: Exception occurred while fetching $route from API: $e",
      );

      if (e is SocketException) {
        _debouncedShowGlobalErrorDialog("No internet connection!");
      } else {
        _debouncedShowGlobalErrorDialog(
          "Exception occurred while fetching $route: $e",
        );
      }

      return null;
    }
  }

  void _debouncedShowGlobalErrorDialog(String message) {
    final now = DateTime.now();
    if (_lastErrorDialogMessage == message &&
        _lastErrorDialogTime != null &&
        now.difference(_lastErrorDialogTime!) < _errorDialogDebounce)
      return;

    _lastErrorDialogTime = now;
    _lastErrorDialogMessage = message;
    showGlobalErrorDialog(message);
  }

  // START GET IS USER STUDENT
  bool _getIsUserStudent(Map json) {
    if (json['data']['teacher'] == null &&
        json['data']['guardian'] == null && //TODO remove when parents supported
        json['data']['config']['role'] == "student") {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<bool?> isUserStudent() async {
    var resp = await getFromAPI(route: "/api/me");

    if (resp != null) {
      logger.d("[API] /api/me is not null");
      bool isStudent = _getIsUserStudent(resp);

      // save student data
      if (isStudent) {
        _student = BesteSchuleStudent.fromJson(resp['data']['students'][0]);
      }

      return isStudent;
    } else {
      return null;
    }
  }

  Future<int?> getStudentId() async {
    if (_student != null) {
      return _student!.studentId;
    } else {
      var resp = await getFromAPI(route: "/api/students");

      if (resp == null) {
        logger.e("[API] /api/students was null when calling getStudentId()");
        return null;
      } else {
        if (resp['data'] != null &&
            resp['data'] is List &&
            (resp['data'] as List).isNotEmpty &&
            resp['data'][0]['id'] != null)
          return resp['data'][0]['id'];
        else
          return null;
      }
    }
  }

  List<SchoolYear> sortSchoolYears(List<SchoolYear> years) {
    years.sort((a, b) => b.from.compareTo(a.from));
    return years;
  }

  Future<void> setSchoolYear(SchoolYear year) async {
    if (year.id == -1 && _selectedYear != null && _selectedYear!.id == year.id)
      return;

    final url = Uri.parse('https://beste.schule/api/years/current');
    final payload = 'id=${year.id}';

    final key = await getAPIKey();

    if (key == null || key.isEmpty) {
      logger.e("[API] ERROR: API KEY is missing.");
      _debouncedShowGlobalErrorDialog("API KEY is missing. (setSchoolYear())");
      return;
    }

    try {
      final response = await http.post(
        url,
        headers: {
          'Authorization': 'Bearer $key',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: payload,
      );

      if (response.statusCode != 200) {
        logger.e(
          "[API] ERROR: Failed settings school year: response code is ${response.statusCode}",
        );
        _debouncedShowGlobalErrorDialog(
          "Failed settings school year: response code is ${response.statusCode}",
        );
        return;
      } else {
        _selectedYear = year;
        logger.i(
          "[API] Successfully changed school year to ${year.name} (${year.id})",
        );
      }
    } catch (e) {
      logger.e(
        "[API] ERROR: Exception occurred while setting the current year: $e",
      );

      if (e is SocketException) {
        _debouncedShowGlobalErrorDialog("No internet connection!");
      } else {
        _debouncedShowGlobalErrorDialog(
          "Exception occurred while changing the current year: $e",
        );
      }
    }
  }

  @override
  Future<SchoolYear?> getCurrentYear() async {
    if (_years.isEmpty) await getSchoolYears();
    if (_selectedYear != null) return _selectedYear;
    if (_years.isEmpty) return null;

    sortSchoolYears(_years);

    if (_years.isEmpty) return null;

    await setSchoolYear(_years.first);

    return _years.first;
  }

  @override
  Future<List<SchoolYear>?> getSchoolYears() async {
    if (_years.isNotEmpty) {
      return _years;
    }

    var resp = await getFromAPI(route: "/api/years");
    if (resp == null) {
      logger.e("[API] /api/years was null");
      return null;
    } else {
      if (resp['data'] != null) {
        List<SchoolYear> years = [];
        for (final year in (resp['data'] as List)) {
          years.add(SchoolYear.fromJson(year));
        }

        years = sortSchoolYears(years);
        _years = years;
        if (_selectedYear == null && years.isNotEmpty) {
          await getCurrentYear(); // sets _selectedYear
        }

        return years;
      } else {
        return null;
      }
    }
  }

  @override
  Future<Map?> getAllData({SchoolYear? year, SchoolInterval? interval}) async {
    final selectedYear =
        year ??
        (await getCurrentYear() ??
            (_years.isNotEmpty ? sortSchoolYears(_years).first : null));

    if (selectedYear == null) return null;
    if (_allData[selectedYear] != null) return _allData[selectedYear];

    var studentId = await getStudentId();
    if (studentId == null) return null;

    String route = "/api/students/$studentId";
    Map<String, dynamic> params = {
      'include': 'grades,finalgrades,subjects,intervals',
      'filter[year]': selectedYear.id.toString(),
      if (interval != null) 'filter[interval]': interval.id.toString(),
    };

    logger.i("[API] $route");

    logger.i("[API] $params");

    var resp = await getFromAPI(route: route, params: params);

    if (resp == null) {
      logger.e("[API] getAllData() response was null!");
      return null;
    }
    _allData[selectedYear] = resp['data'];
    return _allData[selectedYear];
  }

  SchoolInterval? searchInterval(List<SchoolInterval> intervals, int id) {
    for (SchoolInterval interval in intervals) {
      if (interval.id == id) return interval;
    }
    return null;
  }

  Future<SchoolInterval?> getIntervalByID(int id) async {
    SchoolInterval? interval;
    List<SchoolInterval> intervals = [];

    for (Map year in _allData.values) {
      if (year['intervals'] != null &&
          year['intervals'] is List &&
          (year['intervals'] as List).isNotEmpty) {
        for (Map interval in year['intervals']) {
          intervals.add(SchoolInterval.fromJson(interval));
        }
      }
    }

    SchoolInterval? result = searchInterval(intervals, id);
    if (result != null)
      return result;
    else
      intervals = [];

    var resp = await getFromAPI(
      route: "/api/years",
      params: {'filter[student]': await getStudentId() ?? -1},
    );

    if (resp != null &&
        resp['data'] != null &&
        resp['data'] is List &&
        (resp['data'] as List).isNotEmpty) {
      List<Map> years = resp['data'];

      for (Map year in years) {
        if (year['intervals'] != null &&
            year['intervals'] is List &&
            (year['intervals'] as List).isNotEmpty) {
          for (Map interval in year['intervals']) {
            intervals.add(SchoolInterval.fromJson(interval));
          }
        }
      }
    }

    return searchInterval(intervals, id);
  }

  @override
  Future<List<SchoolInterval>> getIntervals({
    SchoolYear? schoolYear,
    bool force = false,
  }) async {
    final year = schoolYear ?? await getCurrentYear();
    if (year == null) return [];
    final allData = _allData[year];

    if (!force &&
        allData != null &&
        allData['intervals'] != null &&
        allData['intervals'] is List<Map> &&
        (allData['intervals'] as List<Map>).isNotEmpty) {
      List<Map> intervals = allData['intervals'] as List<Map>;

      return intervals
          .map((Map interval) => SchoolInterval.fromJson(interval))
          .toList();
    }

    Map? resp = await getAllData(year: year);

    if (resp != null) {
      logger.d("[API] Received -interval- from the api wasn't null.");

      final allData = _allData[year];

      if (allData != null &&
          allData['intervals'] != null &&
          allData['intervals'] is List &&
          (allData['intervals'] as List).isNotEmpty) {
        List<Map> data = (allData['intervals'] as List).map((e) => e as Map).toList();

        return data
            .map((Map interval) => SchoolInterval.fromJson(interval))
            .toList();
      } else {
        logger.e(
          "[API] AllData intervals for year ${year.id} was null after getAllData request",
        );
        return [];
      }
    }
    return [];
  }

  @override
  Future<SchoolInterval?> getCurrentInterval({
    SchoolYear? schoolYear,
    bool force = false,
  }) async {
    final List<SchoolInterval> intervals = await getIntervals(
      schoolYear: schoolYear,
      force: force,
    );

    intervals.sort((a, b) => b.from.compareTo(a.from));

    // return first -> latest
    logger.d("[API] Returned CurrentInvterval from allData 'cache'.");
    return intervals.firstOrNull;
  }

  @override
  Future<String?> getCalculationRuleForSubject(
    int subjectId, {
    SchoolYear? schoolYear,
    bool force = false,
  }) async {
    final SchoolYear? year = schoolYear ?? await getCurrentYear();
    if (year == null) return null;
    List data = [];
    final allData = _allData[year];
    if (!force &&
        allData != null &&
        allData['finalgrades'] != null &&
        (allData['finalgrades'] as List).isNotEmpty) {
      data = allData['finalgrades'];
    } else {
      await getAllData(year: year);
      if (_allData[year] == null || _allData[year]!['finalgrades'] == null)
        return null;
      else
        data = _allData[year]!['finalgrades'];
    }

    SchoolInterval? interval = await getCurrentInterval(schoolYear: year);
    int interval_id = interval?.id ?? 0;

    // find entry with the given subject
    final entry = data
        .where(
          (item) =>
              item['subject_id'] == subjectId &&
              item['interval_id'] == interval_id,
        )
        .firstOrNull;

    String? rule;
    if (entry == null) {
      final entries = data
          .where((item) => item['subject_id'] == subjectId)
          .toList();

      if (entries.isEmpty) return null;

      // get the one with the highest interval_id
      entries.sort((a, b) => b['interval_id'].compareTo(a['interval_id']));

      logger.d(
        "[Calc Rule API] Found -calc rule- without correct year which was${entries.first['calculation_rule'] == null ? "" : "n't"} null.",
      );
      rule = entries.first['calculation_rule'];
    } else {
      logger.d("[Calc Rule API] Found -calc rule- which wasn't null.");

      rule = entry['calculation_rule'];
    }

    return rule;
  }

  @override
  Future<List<Subject>?> getSubjects({bool force = false}) async {
    final year = await getCurrentYear();
    if (year == null) return null;
    List? data;
    final allData = _allData[year];
    if (!force &&
        allData != null &&
        allData['subjects'] != null &&
        (allData['subjects'] as List).isNotEmpty) {
      data = allData['subjects'];
      logger.i("[API] Received subjects from _allData cache");
    } else {
      await getAllData();
      if (_allData[year] == null || _allData[year]!['subjects'] == null)
        return null;
      else
        data = _allData[year]!['subjects'];
    }

    if (data != null) {
      logger.d("[Subject API] Received subjects from the api weren't null.");

      List<Subject> subjects = [];

      for (Map subject in data) {
        subjects.add(Subject.fromJson(subject));
      }

      return subjects;
    } else {
      logger.e("[Subject API] Received subjects from the api were null.");

      return null;
    }
  }

  @override
  Future<List<Grade>> getAllGrades() async {
    List<Grade> grades = [];

    for (SchoolYear year in _years) {
      if (_allData.length == _years.length)
        var resp = await getAllData(year: year);

      if (_allData[year] != null) {
        logger.d("[API] getAllGrades got grades from api");

        for (Map grade in _allData[year]!['grades']) {
          grades.add(Grade.fromJson(grade));
        }
      }
    }

    return grades;
  }

  @override
  Future<List<Grade>?> getGrades({
    bool force = false,
    SchoolYear? yearArg,
    SchoolInterval? interval,
  }) async {
    final year = yearArg ?? await getCurrentYear();
    if (year == null) return null;
    List data;
    List<Grade>? grades;
    final allData = _allData[year];
    if (!force &&
        allData != null &&
        allData['grades'] != null &&
        (allData['grades'] as List).isNotEmpty) {
      data = allData['grades'];
      logger.i(
        "[API] Received grades from _allData 'cache' (year: ${year.id})",
      );
    } else {
      int? id = await getStudentId();

      if (id != null) {
        await getAllData(year: year);
        if (_allData[year] != null && _allData[year]!['grades'] != null) {
          logger.i("[API] Grades from API weren't null");
        }
      }
      if (_allData[year] == null || _allData[year]!['grades'] == null)
        return null;
      else
        data = _allData[year]!['grades'];
    }

    grades = [];

    for (Map grade in data) {
      grades.add(Grade.fromJson(grade));
    }

    return grades.where((grade) => interval == null ? true : grade.intervalId == interval.id).toList();
  }

  @override
  Future<List<SchoolDay?>?> getWeek({
    required DateString dateString,
    bool force = false,
  }) async {
    List data;

    if (!force &&
        _weekData[dateString] != null &&
        _weekData[dateString]!.isNotEmpty) {
      logger.i("[API] Week info from cache");

      data = _weekData[dateString]!;
    } else {
      var resp = await getFromAPI(
        route: "/api/journal/weeks/${dateString.toString()}",
        params: {'include': 'days.lessons', 'interpolate': 'true'},
      );

      if (resp == null) {
        logger.e("[Lesson API] Received -lessons- from the api were null.");
        return null;
      }

      data = resp['data']['days'];

      _weekData[dateString] = data;
      logger.i("[Lesson API] Cached week data");
    }

    // Map to SchoolDay? (allowing nulls if fromJson returns null)
    List<SchoolDay?> days = data.map((e) {
      try {
        return SchoolDay.fromJson(e);
      } catch (_) {
        logger.i("[API] Converting JSON to SchoolDay failed. Returning null!");
        return null;
      }
    }).toList();

    // Remove days where .isNull is true, but keep nulls
    days = days.map((day) => (day != null) ? day : null).toList();

    return days;
  }

  // Save _allData to shared preferences
  Future<void> _saveAllDataToPrefs() async {
    final prefs = await SharedPreferences.getInstance();

    try {
      // save all data
      final allDataToSave = _allData.map(
        (year, data) => MapEntry(year.id.toString(), data),
      );
      await prefs.setString('_allData', jsonEncode(allDataToSave));

      String yearString = jsonEncode(
        _years
            .map(
              (y) => {
                'id': y.id,
                'name': y.name,
                'from': y.from.toIso8601String(),
                'to': y.to.toIso8601String(),
              },
            )
            .toList(),
      );

      await prefs.setString('_years', yearString);
      await prefs.setString(
        '_selectedYear',
        _selectedYear?.id.toString() ?? '',
      );
      logger.i(
        "[Repo] Saved _allData, _years, _selectedYear to shared preferences.",
      );
      // save and convert week data
      // Convert _weekData to a serializable map (deep conversion)
      final serializableWeekData = _weekData.map((key, value) {
        final serializableList = value.map((e) {
          // if already map -> just return the map
          if (e is Map) return e;

          // if schoolday -> make it a jsonb
          if (e is SchoolDay) return e.toJson();

          // if it is any other object -> try converting to json
          // else -> make it a string
          try {
            return e.toJson();
          } catch (_) {
            return e.toString();
          }
        }).toList();

        return MapEntry(key.toString(), serializableList);
      });

      if (serializableWeekData.isNotEmpty)
        await prefs.setString('_weekData', jsonEncode(serializableWeekData));

      logger.i("[Repo] Saved _weekData to shared preferences.");
    } catch (e) {
      logger.e("[Repo] Failed to save _weekData: $e");
      logger.e(_weekData.toString());
    }
  }

  // Load _allData from shared preferences
  Future<void> _loadAllDataFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();

    // load years
    final yearsString = prefs.getString('_years');
    if (yearsString != null) {
      try {
        List yearsRaw = jsonDecode(yearsString);

        List<SchoolYear> years = [];

        for (dynamic year in yearsRaw) {
          if (year is Map && SchoolYear.fromJson(year).id != -1)
            years.add(SchoolYear.fromJson(year));
        }

        logger.d("[API] years loaded: $years");

        if (years.isNotEmpty) {
          _years = years;
        }

        logger.d("[Repo] Loaded _years from shared preferences.");
      } catch (e) {
        logger.e("[Repo] Failed to load _years: $e");
      }
    }

    // load selected year
    final selectedYearString = prefs.getString('_selectedYear');
    if (selectedYearString != null) {
      try {
        SchoolYear? selectedYear = _years
            .where((year) => year.id == int.parse(selectedYearString))
            .firstOrNull;

        if (selectedYear != null) _selectedYear = selectedYear;

        selectedYear == null
            ? logger.e(
                "[Repo] Failed to load _selectedYear (null or not found): value: $selectedYear ($selectedYearString) years: $_years ($yearsString)",
              )
            : logger.i(
                "[Repo] Loaded _selectedYear (${_selectedYear?.id ?? ""}) from shared preferences.",
              );
      } catch (e) {
        logger.e("[Repo] Failed to load _selectedYear: $e");
      }
    }

    // load all data
    final allDataJsonString = prefs.getString('_allData');
    if (allDataJsonString != null) {
      try {
        Map allDataRaw = jsonDecode(allDataJsonString);
        Map<SchoolYear, Map> allData = {};

        allData = allDataRaw.map((yearRaw, value) {
          SchoolYear year =
              _years
                  .where((year) => year.id == int.parse(yearRaw))
                  .firstOrNull ??
              SchoolYear.fromJson({});

          return MapEntry(year, value);
        });

        if (allData.isNotEmpty) _allData = allData;

        logger.i("[Repo] Loaded _allData from shared preferences.");
      } catch (e) {
        logger.e("[Repo] Failed to load _allData: $e");
      }
    }

    // load week data
    final weekDataJsonString = prefs.getString('_weekData');
    if (weekDataJsonString != null) {
      try {
        final decoded = jsonDecode(weekDataJsonString) as Map;
        // convert dynamic value of each key to a list
        _weekData = {};
        decoded.forEach((key, value) {
          _weekData[DateString.fromString(key)] = List.from(value);
        });

        logger.i("[Repo] Loaded _weekData from shared preferences.");
      } catch (e) {
        logger.e("[Repo] Failed to load _weekData: $e");
        logger.e(weekDataJsonString.toString());
      }
    }
  }

  // called before runApp to ensure cache is loaded first instead of the requests being made
  Future<void> loadCacheOnStartup() async {
    await _loadAllDataFromPrefs();
  }

  // load and save on app resume/pause
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _loadAllDataFromPrefs();
      logger.i("[API] Saved data to cache");
    } else {
      _saveAllDataToPrefs();
      logger.i("[API] Loaded data from cache");
    }
  }
}
