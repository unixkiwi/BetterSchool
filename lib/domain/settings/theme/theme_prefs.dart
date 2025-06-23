import 'package:school_app/utils/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class ThemePrefs {
  static const String _brightnessKey = 'brightness_mode';
  static const String _themeKey = 'theme_color';

  static Future<void> saveThemeMode(ThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_brightnessKey, mode.index);

    logger.d("[Theme Pref] brightness was set so ${mode.name}");
  }

  static Future<ThemeMode> loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final index = prefs.getInt(_brightnessKey);
    if (index == null) return ThemeMode.system;
    return ThemeMode.values[index];
  }

  static Future<void> saveThemeColor(Color? color) async {
    final prefs = await SharedPreferences.getInstance();
    final int colorValue;
    if (color == null) {
      colorValue = -1;
    } else if (color is MaterialColor) {
      colorValue = color.toARGB32();
    } else {
      colorValue = color.toARGB32();
    }
    await prefs.setInt(_themeKey, colorValue);

    logger.d("[Theme Pref] theme was saved with color $color");
  }

  static Future<Color?> loadThemeColor() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getInt(_themeKey);
    if (value == null || value == -1) return null;
    
    return Color(value);
  }
}
