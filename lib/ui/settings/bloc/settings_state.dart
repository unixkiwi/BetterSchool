part of 'settings_bloc.dart';

class SettingsState {
  final ThemeMode brightnessMode;
  final bool useModifiers;
  final bool useAvgGradeCalcFormula;
  final List<SchoolYear> availableYears;
  final int selectedYearId;

  SettingsState({
    required this.brightnessMode,
    required this.useModifiers,
    required this.useAvgGradeCalcFormula,
    this.availableYears = const [],
    this.selectedYearId = -1,
  });

  SettingsState copyWith({
    ThemeMode? brightnessMode,
    bool? useModifiers,
    bool? useAvgGradeCalcFormula,
    List<SchoolYear>? availableYears,
    int? selectedYearId,
  }) {
    return SettingsState(
      brightnessMode: brightnessMode ?? this.brightnessMode,
      useModifiers: useModifiers ?? this.useModifiers,
      useAvgGradeCalcFormula:
          useAvgGradeCalcFormula ?? this.useAvgGradeCalcFormula,
      availableYears: availableYears ?? this.availableYears,
      selectedYearId: selectedYearId ?? this.selectedYearId,
    );
  }
}
