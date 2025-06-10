import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:school_app/data/models/beste_schule_oauth_client_impl.dart';
import 'package:school_app/domain/models/beste_schule_user.dart';
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/domain/models/grade.dart';
import 'package:school_app/domain/models/subject.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/utils/logger.dart';

class BesteSchuleRepoImpl implements BesteSchuleRepo {
  final String _BASE_URL = "beste.schule";
  final BesteSchuleOauthClientImpl clientImpl = BesteSchuleOauthClientImpl();

  BesteSchuleStudent? _student;
  Map _allData = {};

  //TODO make use of /api/students/{id}?include=grades,subjects... because for some reason has newer data

  //TODO reimplement proper caching using shared preferences

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
  Future<int?> getCurrentIntervalID() async {
    if (_allData['intervals'] != null &&
        (_allData['intervals'] as List).isNotEmpty) {
      var intervals = _allData['intervals'] as List;

      intervals.sort(
        (a, b) =>
            DateTime.parse(b['from']).compareTo(DateTime.parse(a['from'])),
      );

      // return first -> latest
      var currentInterval = intervals.first['id'] as int?;

      logger.i("[API] Returned CurrentInvterval from allData 'cache'.");
      if (currentInterval != null) return currentInterval;
    }

    var resp = await getFromAPI(route: "/api/intervals");

    if (resp != null) {
      logger.d("[Interval API] Received -interval- from the api wasn't null.");

      var data = resp['data'];

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
      logger.i("[Interval API] Received -interval- from the api was null.");

      return null;
    }
  }

  @override
  Future<String?> getCalculationRuleForSubject(int subjectId) async {
    List data = [];

    if (_allData['finalgrades'] != null &&
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
  Future<List<Subject>?> getSubjects() async {
    List? data;

    if (_allData['subjects'] != null &&
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
      logger.i("[Subject API] Received -subjects- from the api were null.");

      return null;
    }
  }

  @override
  Future<List<Grade>?> getGrades() async {
    if (_allData['grades'] != null && (_allData['grades'] as List).isNotEmpty) {
      var data = _allData['grades'];

      logger.i("[API] Received grades from _allData 'cache'");

      List<Grade> grades = [];

      for (Map grade in data) {
        grades.add(
          Grade(
            subject: Subject.fromJson(grade['collection']['subject']),
            title: grade['collection']['name'],
            type: grade['collection']['type'],
            date: DateTime.parse(grade['given_at	']),
            value: Grade.gradeToNumber(grade['value']),
          ),
        );
      }

      return grades;
    } else {
      var data =
          (await getFromAPI(
                route: "/api/grades",
                params: {'include': 'collection', 'sort': 'given_at'},
              )
              as Map)['data'];

      if (data == null) return null;

      List<Grade> grades = [];

      for (Map grade in data) {
        grades.add(Grade.fromJson(grade));
      }

      _allData['grades'] = data;

      return grades;
    }
  }

  @override
  Future<List<SchoolDay>?> getWeek({required int nr}) async {
    var resp = await getFromAPI(
      route: "/api/journal/weeks/${DateTime.now().year}-$nr",
      params: {'include': 'days.lessons', 'interpolate': 'true'},
    );

    if (resp != null) {
      logger.d("[Lesson API] Received -lessons- from the api weren't null.");

      List<SchoolDay> days;
      List daysRaw = resp['data']['days'];

      days = daysRaw.map((e) => SchoolDay.fromJson(e)).toList();

      days.removeWhere((day) => day.isNull);

      return days;
    } else {
      logger.i("[Lesson API] Received -lessons- from the api were null.");

      return null;
    }
  }
}
