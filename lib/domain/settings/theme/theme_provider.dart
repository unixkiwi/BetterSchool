import 'package:flutter/material.dart';
import 'package:school_app/presentation/viewmodels/settings_page_viewmodel.dart';
import 'package:school_app/domain/settings/theme/theme_prefs.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = SettingsPageViewmodel.mode;
  Color? _themeColor;

  ThemeProvider() {
    _loadTheme();
  }

  ThemeMode get themeMode => _themeMode;
  Color? get themeColor => _themeColor;

  Future<void> _loadTheme() async {
    _themeMode = await ThemePrefs.loadThemeMode();
    _themeColor = await ThemePrefs.loadThemeColor();
    SettingsPageViewmodel.mode = _themeMode;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });
  }

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    SettingsPageViewmodel.mode = mode;
    ThemePrefs.saveThemeMode(mode);
    notifyListeners();
  }

  void setThemeColor(Color? color) {
    _themeColor = color;
    ThemePrefs.saveThemeColor(color);
    notifyListeners();
  }
}
