import 'package:betterschool/domain/models/settings/setting.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UseGradeModifiersSetting extends Setting<bool> {
  final SharedPreferences _prefs;

  const UseGradeModifiersSetting(this._prefs)
    : super(storageKey: 'settings_use_modifiers', defaultValue: false);

  @override
  bool getValue() {
    return _prefs.getBool(storageKey) ?? defaultValue;
  }

  @override
  Future<void> setValue(bool value) async {
    await _prefs.setBool(storageKey, value);
  }
}
