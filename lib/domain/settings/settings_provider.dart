import 'package:flutter/material.dart';
import 'package:school_app/domain/settings/grade/grade_pref.dart';
import 'package:school_app/domain/settings/theme/theme_prefs.dart';
import 'package:school_app/presentation/viewmodels/settings_page_viewmodel.dart';

class SettingsProvider extends ChangeNotifier {
  static SettingsProvider? _instance;

  ThemeMode _themeMode = SettingsPageViewmodel.mode;
  Color? _themeColor;
  bool _usePlainValue = false;

  static SettingsProvider get instance {
    _instance ??= SettingsProvider();

    return _instance!;
  }

  SettingsProvider() {
    _loadData();
  }

  // GRADE
  bool get usePlainGradeValue => _usePlainValue;

  Future<void> setUsePlainGradeValue(bool value) async {
    _usePlainValue = value;

    await GradePrefs.saveGradeSettings(usePlainGradeValue: usePlainGradeValue);  
  }

  // THEMES
  ThemeMode get themeMode => _themeMode;
  Color? get themeColor => _themeColor;

  Future<void> _loadData() async {
    _themeMode = await ThemePrefs.loadThemeMode();
    _themeColor = await ThemePrefs.loadThemeColor();
    SettingsPageViewmodel.mode = _themeMode;
    
    _usePlainValue = await GradePrefs.loadGradePlainValueSetting();

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

  // THEMES END
}
