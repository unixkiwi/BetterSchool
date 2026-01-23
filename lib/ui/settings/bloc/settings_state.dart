part of 'settings_bloc.dart';

class SettingsState {
  final ThemeMode brightnessMode;
  final bool useModifiers;
  final bool useAvgGradeCalcFormula;

  SettingsState({required this.brightnessMode, required this.useModifiers, required this.useAvgGradeCalcFormula});

  SettingsState copyWith({ThemeMode? brightnessMode, bool? useModifiers, bool? useAvgGradeCalcFormula}) {
    return SettingsState(
      brightnessMode: brightnessMode ?? this.brightnessMode,
      useModifiers: useModifiers ?? this.useModifiers,
      useAvgGradeCalcFormula: useAvgGradeCalcFormula ?? this.useAvgGradeCalcFormula
    );
  }
}
