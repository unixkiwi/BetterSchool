import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:school_app/domain/models/day.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';

class BesteSchuleRepoHTTP extends ChangeNotifier implements BesteSchuleRepo {
  final String _BASE_URL = "beste.schule";

  final Map<String, String> _HEADERS = {
    'Authorization': 'Bearer ${dotenv.get("KEY")}',
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  @override
  Future<List<SchoolDay>> getWeek({required int nr}) async {
    var resp = await http.get(
      Uri.https(_BASE_URL, "/api/journal/weeks/${DateTime.now().year}-$nr", {
        'include': 'days.lessons',
        'interpolate': 'true',
      }),
      headers: _HEADERS,
    );

    List days = jsonDecode(resp.body)['data']['days'];
    days.removeAt(4);
    days.removeAt(5);

    if (resp.statusCode == 200) {
      return days.map((e) => SchoolDay.fromJson(e)).toList();
    } else {
      return [];
    }
  }
}
