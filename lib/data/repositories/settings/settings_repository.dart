import 'package:betterschool/config/di.dart';
import 'package:betterschool/data/models/settings/grades/use_grade_modifiers_setting.dart';
import 'package:betterschool/data/models/settings/look_and_feel/brightness_mode_setting.dart';

class SettingsRepository {
  // LOOK & FEEL
  final brightness = BrightnessModeSetting(sl());

  // GRADES
  final useGradeModifiersKey = UseGradeModifiersSetting(sl());
}
