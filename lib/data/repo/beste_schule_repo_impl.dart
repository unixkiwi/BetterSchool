import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:school_app/data/models/oauth_repo_impl_webview.dart';
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
  final String _BASE_URL = "beste.schule";
  final BesteSchuleOauthWebviewRepoImpl clientImpl =
      BesteSchuleOauthWebviewRepoImpl();

  BesteSchuleStudent? _student;
  Map _allData = {};
  Map<DateString, List> _weekData = {};

  //TODO reload after specific time

  // Debounce for error dialogs
  DateTime? _lastErrorDialogTime;
  String? _lastErrorDialogMessage;
  static const Duration _errorDialogDebounce = Duration(seconds: 5);

  Future<dynamic> getFromAPI({
    required String route,
    Map<String, dynamic>? params,
  }) async {
    final key = await clientImpl.getToken();

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
        return resp['data'][0]['id'];
      }
    }
  }

  @override
  Future<Map?> getAllData() async {
    var studentId = await getStudentId();
    if (studentId == null) return null;

    var resp = await getFromAPI(
      route: "/api/students/$studentId",
      params: {'include': 'grades,finalgrades,subjects,intervals'},
    );

    if (resp == null) {
      logger.e("[API] getAllData() response was null!");
      return null;
    }

    _allData = resp['data'];

    return _allData;
  }

  @override
  Future<int?> getCurrentIntervalID({bool force = false}) async {
    if (!force &&
        _allData['intervals'] != null &&
        (_allData['intervals'] as List).isNotEmpty) {
      var intervals = _allData['intervals'] as List;

      intervals.sort(
        (a, b) =>
            DateTime.parse(b['from']).compareTo(DateTime.parse(a['from'])),
      );

      // return first -> latest
      var currentInterval = intervals.first['id'] as int?;

      logger.d("[API] Returned CurrentInvterval from allData 'cache'.");
      if (currentInterval != null) return currentInterval;
    }

    var resp = await getFromAPI(route: "/api/intervals");

    if (resp != null) {
      logger.d("[Interval API] Received -interval- from the api wasn't null.");

      List data = resp['data'];

      if (data.isEmpty) return null;

      _allData['intervals'] = data;

      // sort intervals by their from data
      data.sort(
        (a, b) =>
            DateTime.parse(b['from']).compareTo(DateTime.parse(a['from'])),
      );

      // return first -> latest
      return data.first['id'] as int;
    } else {
      logger.e("[Interval API] Received -interval- from the api was null.");

      return null;
    }
  }

  @override
  Future<String?> getCalculationRuleForSubject(
    int subjectId, {
    bool force = false,
  }) async {
    List data = [];

    if (!force &&
        _allData['finalgrades'] != null &&
        (_allData['finalgrades'] as List).isNotEmpty) {
      data = _allData['finalgrades'];
    } else {
      var resp = await getAllData();

      if (resp == null) return null;

      data = resp['data'];

      _allData['finalgrades'] = data;
    }

    int interval_id = await getCurrentIntervalID() ?? 0;

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
    List? data;

    if (!force &&
        _allData['subjects'] != null &&
        (_allData['subjects'] as List).isNotEmpty) {
      data = _allData['subjects'];

      logger.i("[API] Received subjects from _allData 'cache'");
    } else {
      var dataRaw = await getAllData();

      if (dataRaw == null)
        data = null;
      else {
        data = dataRaw['data'];
        _allData['subjects'] = data;
      }
    }

    if (data != null) {
      logger.d("[Subject API] Received -subjects- from the api weren't null.");

      List<Subject> subjects = [];

      for (Map subject in data) {
        subjects.add(Subject.fromJson(subject));
      }

      return subjects;
    } else {
      logger.e("[Subject API] Received -subjects- from the api were null.");

      return null;
    }
  }

  @override
  Future<List<Grade>?> getGrades({bool force = false}) async {
    List data;
    List<Grade>? grades;

    if (!force &&
        _allData['grades'] != null &&
        (_allData['grades'] as List).isNotEmpty) {
      data = _allData['grades'];

      logger.i("[API] Received grades from _allData 'cache'");
    } else {
      int? id = await getStudentId();

      if (id != null) {
        var resp = await getAllData();

        if (resp != null) {
          logger.i("[API] Grades from API weren't null");

          data = resp['data']['grades'];

          _allData['grades'] = data;
        }
      }

      return null;
    }

    grades = [];

    for (Map grade in data) {
      grades.add(Grade.fromJson(grade));
    }

    return grades;
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
        return null;
      }
    }).toList();

    // Remove days where .isNull is true, but keep nulls
    days = days.map((day) => (day != null && day.isNull) ? null : day).toList();

    return days;
  }

  // Save _allData to shared preferences
  Future<void> _saveAllDataToPrefs() async {
    final prefs = await SharedPreferences.getInstance();

    try {
      // save all data
      await prefs.setString('_allData', jsonEncode(_allData));
      logger.i("[Repo] Saved _allData to shared preferences.");

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

    // load all data
    final allDataJsonString = prefs.getString('_allData');
    if (allDataJsonString != null) {
      try {
        _allData = jsonDecode(allDataJsonString);
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

  BesteSchuleRepoImpl() {
    _loadAllDataFromPrefs();
    WidgetsBinding.instance.addObserver(this);
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
