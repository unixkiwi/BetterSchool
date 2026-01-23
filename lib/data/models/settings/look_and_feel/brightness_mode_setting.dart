import 'package:betterschool/domain/models/settings/setting.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BrightnessModeSetting extends Setting<ThemeMode> {
  final SharedPreferences _prefs;

  const BrightnessModeSetting(this._prefs)
    : super(
        storageKey: 'settings_brightness_mode',
        defaultValue: ThemeMode.system,
      );

  @override
  getValue() {
    final int? value = _prefs.getInt(storageKey);
    switch (value) {
      case 1:
        return ThemeMode.light;
      case 2:
        return ThemeMode.dark;
      default:
        return defaultValue;
    }
  }

  @override
  Future<void> setValue(mode) async {
    final int value;

    switch (mode) {
      case ThemeMode.light:
        value = 1;
        break;
      case ThemeMode.dark:
        value = 2;
        break;
      case _:
        value = 0;
        break;
    }

    await _prefs.setInt(storageKey, value);
  }
}
