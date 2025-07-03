import 'package:flutter/material.dart';
import 'package:school_app/data/repo/beste_schule_repo_impl.dart';
import 'package:school_app/domain/models/school_year.dart';
import 'package:school_app/domain/settings/grade/grade_pref.dart';
import 'package:school_app/domain/settings/theme/theme_prefs.dart';
import 'package:school_app/presentation/viewmodels/settings_page_viewmodel.dart';
import 'package:school_app/utils/logger.dart';

class SettingsProvider extends ChangeNotifier {
  final BesteSchuleRepoImpl _repo;
  static SettingsProvider? _instance;

  ThemeMode _themeMode = SettingsPageViewmodel.mode;
  Color? _themeColor;
  bool _usePlainValue = false;

  static SettingsProvider get instance {
    _instance ??= SettingsProvider(BesteSchuleRepoImpl.instance);

    return _instance!;
  }

  SettingsProvider(this._repo) {
    _loadData();
  }

  // SCHOOL YEAR
  SchoolYear? _schoolYear;
  SchoolYear? get schoolYear => _schoolYear;

  Future<void> loadCurrentSchoolYear() async {
    final year = await _repo.getCurrentYear();

    if (year != null) {
      _schoolYear = year;
      notifyListeners();
    } else {
      logger.i("[Settings Provider] received current year was null!");
    }
  }

  Future<void> setCurrentSchoolYear(SchoolYear year) async {
    await _repo.setSchoolYear(year);
    _schoolYear = year;
    notifyListeners();
  }

  Future<List<SchoolYear>> getSchoolYears() async {
    List<SchoolYear> years = [];

    final repoResp = await _repo.getSchoolYears();

    if (repoResp == null) {
      logger.e("[Settings Provider] School Years from the repo were null! ");
      return [];
    }

    years = repoResp;

    return years;
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

    await loadCurrentSchoolYear();

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
