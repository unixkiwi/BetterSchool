import 'package:flutter/material.dart';
import 'package:school_app/presentation/viewmodels/settings_page_viewmodel.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = SettingsPageViewmodel.mode;

  ThemeMode get themeMode => _themeMode;

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    SettingsPageViewmodel.mode = mode;
    notifyListeners();
  }
}
