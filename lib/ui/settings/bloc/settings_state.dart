part of 'settings_bloc.dart';

class SettingsState {
  final ThemeMode brightnessMode;
  final bool useModifiers;
  final bool useBundledNotes;
  final bool useAvgGradeCalcFormula;
  final List<SchoolYear> availableYears;
  final int selectedYearId;
  final bool isLoadingYears;

  SettingsState({
    required this.brightnessMode,
    required this.useModifiers,
    required this.useBundledNotes,
    required this.useAvgGradeCalcFormula,
    this.availableYears = const [],
    this.selectedYearId = -1,
    this.isLoadingYears = false,
  });

  SettingsState copyWith({
    ThemeMode? brightnessMode,
    bool? useModifiers,
    bool? useBundledNotes,
    bool? useAvgGradeCalcFormula,
    List<SchoolYear>? availableYears,
    int? selectedYearId,
    bool? isLoadingYears,
  }) {
    return SettingsState(
      brightnessMode: brightnessMode ?? this.brightnessMode,
      useModifiers: useModifiers ?? this.useModifiers,
      useBundledNotes: useBundledNotes ?? this.useBundledNotes,
      useAvgGradeCalcFormula:
          useAvgGradeCalcFormula ?? this.useAvgGradeCalcFormula,
      availableYears: availableYears ?? this.availableYears,
      selectedYearId: selectedYearId ?? this.selectedYearId,
      isLoadingYears: isLoadingYears ?? this.isLoadingYears,
    );
  }
}
