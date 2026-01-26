import 'package:betterschool/domain/models/settings/setting.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SelectedYearSetting extends Setting<int> {
  final SharedPreferences _prefs;

  const SelectedYearSetting(this._prefs)
    : super(storageKey: 'settings_selected_year', defaultValue: -1);

  @override
  int getValue() {
    return _prefs.getInt(storageKey) ?? defaultValue;
  }

  @override
  Future<void> setValue(int value) async {
    await _prefs.setInt(storageKey, value);
  }
}
