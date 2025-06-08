import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/domain/models/grade.dart';
import 'package:school_app/domain/models/subject.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/utils/logger.dart';

class BesteSchuleRepoImpl implements BesteSchuleRepo {
  final String _BASE_URL = "beste.schule";

  //TODO make use of /api/students/{id}?include=grades,subjects... because for some reason has newer data
  //TODO use oauth

  Future<dynamic> getFromAPI({
    required String route,
    Map<String, dynamic>? params,
  }) async {
    // Construct headers at runtime
    //TODO remove because no longer exists
    final key = dotenv.maybeGet("KEY");
    if (key == null || key.isEmpty) {
      logger.e("[API] ERROR: API KEY is missing from environment variables.");
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

  @override
  Future<int?> getCurrentIntervalID() async {
    var resp = await getFromAPI(route: "/api/intervals");

    if (resp != null) {
      logger.d("[Interval API] Received -interval- from the api wasn't null.");

      var data = resp['data'];
      if (data.isEmpty) return null;

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
    var resp = await getFromAPI(route: "/api/finalgrades");

    if (resp == null) return null;

    final List data = resp['data'];

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
    var resp = await getFromAPI(route: "/api/subjects");

    if (resp != null) {
      logger.d("[Subject API] Received -subjects- from the api weren't null.");

      final data = resp['data'];
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
    var resp = await getFromAPI(
      route: "/api/grades",
      params: {'include': 'collection', 'sort': 'given_at'},
    );

    if (resp != null) {
      logger.d("[Grade API] Received -grades- from the api weren't null.");

      final data = resp['data'];
      List<Grade> grades = [];

      for (Map grade in data) {
        grades.add(Grade.fromJson(grade));
      }

      return grades;
    } else {
      logger.i("[Grade API] Received -grades- from the api were null.");

      return null;
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
