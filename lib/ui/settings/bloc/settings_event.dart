part of 'settings_bloc.dart';

@immutable
abstract class SettingsEvent {}

class LoadSettingsEvent extends SettingsEvent {}

class ChangeThemeModeEvent extends SettingsEvent {
  final ThemeMode themeMode;

  ChangeThemeModeEvent(this.themeMode);
}

class ChangeUseModifiersEvent extends SettingsEvent {
  final bool useModifiers;

  ChangeUseModifiersEvent(this.useModifiers);
}

class ChangeUseBundledNotesEvent extends SettingsEvent {
  final bool useBundledNotes;

  ChangeUseBundledNotesEvent(this.useBundledNotes);
}

class ChangeUseAvgGradeCalcFormulaEvent extends SettingsEvent {
  final bool useAvgGradeCalcFormula;

  ChangeUseAvgGradeCalcFormulaEvent(this.useAvgGradeCalcFormula);
}

class ChangeSelectedYearEvent extends SettingsEvent {
  final int yearId;

  ChangeSelectedYearEvent(this.yearId);
}
