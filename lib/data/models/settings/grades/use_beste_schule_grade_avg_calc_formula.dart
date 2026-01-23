import 'package:betterschool/domain/models/settings/setting.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UseBesteSchuleGradeAvgCalcFormula extends Setting<bool> {
  final SharedPreferences _prefs;

  const UseBesteSchuleGradeAvgCalcFormula(this._prefs)
    : super(storageKey: 'settings_use_beste_schule_grade_avg_calc_formula', defaultValue: true);

  @override
  bool getValue() {
    return _prefs.getBool(storageKey) ?? defaultValue;
  }

  @override
  Future<void> setValue(bool value) async {
    await _prefs.setBool(storageKey, value);
  }
}
