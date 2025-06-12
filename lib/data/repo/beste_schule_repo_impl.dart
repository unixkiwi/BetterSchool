import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/widgets.dart';
import 'package:school_app/data/models/beste_schule_oauth_client_impl.dart';
import 'package:school_app/domain/models/beste_schule_user.dart';
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/domain/models/grade.dart';
import 'package:school_app/domain/models/subject.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/utils/logger.dart';

class BesteSchuleRepoImpl extends WidgetsBindingObserver
    implements BesteSchuleRepo {
  final String _BASE_URL = "beste.schule";
  final BesteSchuleOauthClientImpl clientImpl = BesteSchuleOauthClientImpl();

  BesteSchuleStudent? _student;
  Map _allData = {};
  Map<int, List> _weekData = {};

  //TODO reload after specific time

  Future<dynamic> getFromAPI({
    required String route,
    Map<String, dynamic>? params,
  }) async {
    final key = await clientImpl.getToken();

    if (key == null || key.isEmpty) {
      logger.e("[API] ERROR: API KEY is missing.");
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
        return null;
      }
    } catch (e) {
      logger.e(
        "[API] ERROR: Exception occurred while fetching $route from API: $e",
      );
      return null;
    }
  }

  // START GET IS USER STUDENT
  bool _getIsUserStudent(Map json) {
    if (json['data']['teacher'] == null &&
        json['data']['guardian	null'] == null &&
        json['config']['config']['role'] == "students") {
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
      //TODO store in cache the user profile -> BesteSchuleStudent.dart
      bool isStudent = _getIsUserStudent(resp);

      // save student data
      if (isStudent) {
        _student = BesteSchuleStudent.fromJson(resp['data']['students	'][0]);
      }

      return isStudent;
    } else {
      return null;
    }
  }
  // END GET IS USER STUDENT

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
      var resp = await getFromAPI(route: "/api/finalgrades");

      if (resp == null) return null;

      data = resp['data'];

      _allData['finalgrades'] = data;
    }

    int interval_id = await getCurrentIntervalID() ?? 0;

    // find entry with the given subject
    final entry =
        data
            .where(
              (item) =>
                  item['subject_id'] == subjectId &&
                  item['interval_id'] == interval_id,
            )
            .firstOrNull;

    String? rule;
    if (entry == null) {
      final entries =
          data.where((item) => item['subject_id'] == subjectId).toList();

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
      data = (await getFromAPI(route: "/api/subjects") as Map)['data'];

      _allData['subjects'] = data;
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
    if (!force &&
        _allData['grades'] != null &&
        (_allData['grades'] as List).isNotEmpty) {
      var data = _allData['grades'];

      logger.i("[API] Received grades from _allData 'cache'");

      List<Grade> grades = [];

      for (Map grade in data) {
        grades.add(
          Grade(
            subject: Subject.fromJson(grade['collection']['subject']),
            title: grade['collection']['name'],
            type: grade['collection']['type'],
            date: DateTime.parse(grade['given_at']),
            value: Grade.gradeToNumber(grade['value']),
          ),
        );
      }

      return grades;
    } else {
      int? id = await getStudentId();

      if (id != null) {
        var resp = await getFromAPI(
          route: "/api/students/$id",
          params: {'include': 'grades'},
        );

        if (resp != null) {
          logger.i("[API] Grades from API weren't null");

          List<Grade> grades = [];

          var data = resp['data']['grades'];

          for (Map grade in data) {
            grades.add(
              Grade(
                subject: Subject.fromJson(grade['collection']['subject']),
                title: grade['collection']['name'],
                type: grade['collection']['type'],
                date: DateTime.parse(grade['given_at']),
                value: Grade.gradeToNumber(grade['value']),
              ),
            );
          }

          _allData['grades'] = data;

          return grades;
        }
      }

      return null;

      //logger.i("[API] Sending deprecated /api/students")

      /*var data =
          (await getFromAPI(
                route: "/api/students/",
                params: {'include': 'collection', 'sort': 'given_at'},
              )
              as Map)['data'];

      if (data == null) return null;

      List<Grade> grades = [];

      for (Map grade in data) {
        grades.add(Grade.fromJson(grade));
      }

      _allData['grades'] = data;

      return grades;*/
    }
  }

  @override
  Future<List<SchoolDay?>?> getWeek({
    required int nr,
    bool force = false,
  }) async {
    List data;

    if (!force && _weekData[nr] != null) {
      logger.i("[API] Week info from cache");

      data = _weekData[nr]!;
    } else {
      var resp = await getFromAPI(
        route: "/api/journal/weeks/${DateTime.now().year}-$nr",
        params: {'include': 'days.lessons', 'interpolate': 'true'},
      );

      if (resp == null) {
        logger.e("[Lesson API] Received -lessons- from the api were null.");
        return null;
      }

      data = resp['data']['days'];

      _weekData[nr] = data;
      logger.i("[Lesson API] Cached week data");
    }

    // Map to SchoolDay? (allowing nulls if fromJson returns null)
    List<SchoolDay?> days =
        data.map((e) {
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
      await prefs.setString('_allData', jsonEncode(_allData));
      logger.i("[Repo] Saved _allData to shared preferences.");

      await prefs.setString('_weekData', jsonEncode(_weekData));
      logger.i("[Repo] Saved _weekData to shared preferences.");
    } catch (e) {
      logger.e("[Repo] Failed to save _weekData: $e");
    }
  }

  // Load _allData from shared preferences
  Future<void> _loadAllDataFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();

    final allDataJsonString = prefs.getString('_allData');
    if (allDataJsonString != null) {
      try {
        _allData = jsonDecode(allDataJsonString);
        logger.i("[Repo] Loaded _allData from shared preferences.");
      } catch (e) {
        logger.e("[Repo] Failed to load _allData: $e");
      }
    }

    final weekDataJsonString = prefs.getString('_weekData');
    if (weekDataJsonString != null) {
      try {
        _weekData = jsonDecode(weekDataJsonString);
        logger.i("[Repo] Loaded _weekData from shared preferences.");
      } catch (e) {
        logger.e("[Repo] Failed to load _weekData: $e");
      }
    }
  }

  BesteSchuleRepoImpl() {
    _loadAllDataFromPrefs();
    WidgetsBinding.instance.addObserver(this);
  }

  // Call this before runApp to ensure cache is loaded
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
