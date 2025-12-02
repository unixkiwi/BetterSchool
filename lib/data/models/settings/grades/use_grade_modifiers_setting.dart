import 'package:betterschool/domain/models/settings/setting.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UseGradeModifiersSetting extends Setting<bool> {
  final SharedPreferences _prefs;

  const UseGradeModifiersSetting(this._prefs)
    : super(storageKey: 'settings_use_modifiers', fallbackValue: false);

  @override
  bool getValue() {
    return _prefs.getBool(storageKey) ?? false;
  }

  @override
  Future<void> setValue(bool value) async {
    await _prefs.setBool(storageKey, value);
  }
}
