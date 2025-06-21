import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class ThemePrefs {
  static const String _key = 'theme_mode';

  static Future<void> saveThemeMode(ThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_key, mode.index);
  }

  static Future<ThemeMode> loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final index = prefs.getInt(_key);
    if (index == null) return ThemeMode.system;
    return ThemeMode.values[index];
  }
}
