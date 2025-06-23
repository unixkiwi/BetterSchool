import 'package:shared_preferences/shared_preferences.dart';

class GradePrefs {
  static final String _usePlainGradeValueKey = "usePlainGradeValue";

  static Future<void> saveGradeSettings({required bool usePlainGradeValue}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_usePlainGradeValueKey, usePlainGradeValue);
  }

  static Future<bool> loadGradePlainValueSetting() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_usePlainGradeValueKey) ?? false;
  }
}
