import 'package:flutter/material.dart';
import 'package:school_app/presentation/viewmodels/settings_page_viewmodel.dart';
import 'package:school_app/domain/settings/theme/theme_prefs.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = SettingsPageViewmodel.mode;

  ThemeProvider() {
    _loadTheme();
  }

  ThemeMode get themeMode => _themeMode;

  Future<void> _loadTheme() async {
    _themeMode = await ThemePrefs.loadThemeMode();
    SettingsPageViewmodel.mode = _themeMode;
    notifyListeners();
  }

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    SettingsPageViewmodel.mode = mode;
    ThemePrefs.saveThemeMode(mode);
    notifyListeners();
  }
}
