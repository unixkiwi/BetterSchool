import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/domain/models/grade.dart';
import 'package:school_app/domain/models/subject.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';

class BesteSchuleRepoImpl implements BesteSchuleRepo {
  final String _BASE_URL = "beste.schule/";

  final Map<String, String> _HEADERS = {
    'Authorization': 'Bearer ${dotenv.get("KEY")}',
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  // Simple in-memory cache
  List<Subject>? _subjectsCache;
  Map<int, String?>? _calculationRuleCache;

  // Optionally, add a method to clear cache (for logout, refresh, etc.)
  void clearCache() {
    _subjectsCache = null;
    _calculationRuleCache = null;
  }

  Future<dynamic> getFromAPI({
    required String route,
    Map<String, dynamic>? params,
  }) async {
    var resp = await http.get(
      Uri.https(_BASE_URL, route, params),
      headers: _HEADERS,
    );

    if (resp.statusCode == 200) {
      return jsonDecode(resp.body);
    } else {
      return null;
    }
  }

  @override
  Future<int?> getCurrentIntervalID() async {
    var resp = await getFromAPI(route: "api/intervals");

    if (resp != null) {
      List<Map> data = jsonDecode(resp)['data'];
      if (data.isEmpty) return null;

      // sort intervals by their from data
      data.sort(
        (a, b) =>
            DateTime.parse(b['from']).compareTo(DateTime.parse(a['from'])),
      );

      // return first -> latest
      return data.first['id'] as int;
    } else {
      return null;
    }
  }

  @override
  Future<String?> getCalculationRuleForSubject(int subjectId) async {
    // Use cache if available
    _calculationRuleCache ??= {};
    if (_calculationRuleCache!.containsKey(subjectId)) {
      return _calculationRuleCache![subjectId];
    }

    var resp = await getFromAPI(route: "api/finalgrades");

    if (resp == null) return null;

    final List data = jsonDecode(resp)['data'];

    int interval_id = await getCurrentIntervalID() ?? 0;

    // find entry with the given subject
    final entry =
        data
            .where(
              (item) =>
                  item['subject_id'] == subjectId &&
                  item['interval_id'] == interval_id,
            )
            .first;

    String? rule;
    if (entry == null) {
      final entries =
          data.where((item) => item['subject_id'] == subjectId).toList();
      
      if (entries.isEmpty) return null;
      
      // get the one with the highest interval_id
      entries.sort(
        (a, b) => b['interval_id'].compareTo(a['interval_id']),
      );
      rule = entries.first['calculation_rule'];
    } else {
      rule = entry['calculation_rule'];
    }

    // Cache the result
    _calculationRuleCache![subjectId] = rule;
    return rule;
  }

  @override
  Future<List<Subject>?> getSubjects() async {
    // Use cache if available
    if (_subjectsCache != null) {
      return _subjectsCache;
    }

    var resp = await getFromAPI(route: "api/subjects");

    if (resp != null) {
      final List<Map> data = resp['data'];
      List<Subject> subjects = [];

      for (Map subject in data) {
        subjects.add(Subject.fromJson(subject));
      }

      _subjectsCache = subjects; // Cache the result
      return subjects;
    } else {
      return null;
    }
  }

  @override
  Future<List<Grade>?> getGrades() async {
    var resp = await getFromAPI(
      route: "api/grades",
      params: {'include': 'collection', 'sort': 'given_at'},
    );

    if (resp != null) {
      final List<Map> data = resp['data'];
      List<Grade> grades = [];

      for (Map grade in data) {
        grades.add(Grade.fromJson(grade));
      }

      return grades;
    } else {
      return null;
    }
  }

  @override
  Future<List<SchoolDay>?> getWeek({required int nr}) async {
    var resp = await getFromAPI(
      route: "api/journal/weeks/${DateTime.now().year}-$nr",
      params: {'include': 'days.lessons', 'interpolate': 'true'},
    );

    if (resp != null) {
      List<SchoolDay> days;
      List daysRaw = resp['data']['days'];

      days = daysRaw.map((e) => SchoolDay.fromJson(e)).toList();

      days.removeWhere((day) => day.isNull);

      return days;
    } else {
      return null;
    }
  }
}
