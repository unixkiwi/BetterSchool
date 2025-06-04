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

  //TODO: implement getGrades or something like that

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
  Future<List<Subject>?> getSubjects() async {
    var resp = await getFromAPI(route: "api/subjects");

    if (resp != null) {
      final List<Map> data = resp['data'];
      List<Subject> subjects = [];

      for (Map subject in data) {
        subjects.add(Subject.fromJson(subject));
      }

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
