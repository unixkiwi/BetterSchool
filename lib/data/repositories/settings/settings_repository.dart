import 'package:betterschool/config/di.dart';
import 'package:betterschool/data/models/settings/grades/use_beste_schule_grade_avg_calc_formula.dart';
import 'package:betterschool/data/models/settings/grades/use_grade_modifiers_setting.dart';
import 'package:betterschool/data/models/settings/look_and_feel/brightness_mode_setting.dart';
import 'package:betterschool/data/models/settings/year/selected_year_setting.dart';

class SettingsRepository {
  // LOOK & FEEL
  final brightness = BrightnessModeSetting(sl());

  // GRADES
  final useGradeModifiersKey = UseGradeModifiersSetting(sl());
  final useBesteSchuleGradeAvgCalcFormula = UseBesteSchuleGradeAvgCalcFormula(
    sl(),
  );

  // YEAR
  final selectedYear = SelectedYearSetting(sl());
}
