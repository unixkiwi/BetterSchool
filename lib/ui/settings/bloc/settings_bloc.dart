import 'package:betterschool/data/repositories/settings/settings_repository.dart';
import 'package:betterschool/data/repositories/year_repository.dart';
import 'package:betterschool/domain/models/year.dart';
import 'package:betterschool/utils/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsRepository _settingsRepo;
  final YearRepository _yearRepo;

  SettingsBloc(this._settingsRepo, this._yearRepo)
    : super(
        SettingsState(
          brightnessMode: _settingsRepo.brightness.getValue(),
          useModifiers: _settingsRepo.useGradeModifiersKey.getValue(),
          useAvgGradeCalcFormula: _settingsRepo
              .useBesteSchuleGradeAvgCalcFormula
              .getValue(),
          selectedYearId: _settingsRepo.selectedYear.getValue(),
        ),
      ) {
    on<LoadSettingsEvent>(_onLoad);
    on<ChangeThemeModeEvent>(_onChangeThemeMode);
    on<ChangeUseModifiersEvent>(_onChangeUseModifiers);
    on<ChangeUseAvgGradeCalcFormulaEvent>(_onChangeUseAvgGradeCalcFormula);
    on<ChangeSelectedYearEvent>(_onChangeSelectedYear);
  }

  Future<void> _onLoad(
    LoadSettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(
      state.copyWith(
        brightnessMode: _settingsRepo.brightness.getValue(),
        useModifiers: _settingsRepo.useGradeModifiersKey.getValue(),
        useAvgGradeCalcFormula: _settingsRepo.useBesteSchuleGradeAvgCalcFormula
            .getValue(),
        selectedYearId: _settingsRepo.selectedYear.getValue(),
        isLoadingYears: true,
      ),
    );

    final result = await _yearRepo.getYears();
    if (result is Success<List<SchoolYear>>) {
      emit(state.copyWith(availableYears: result.value, isLoadingYears: false));
    } else {
      emit(state.copyWith(isLoadingYears: false));
    }
  }

  Future<void> _onChangeThemeMode(
    ChangeThemeModeEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await _settingsRepo.brightness.setValue(event.themeMode);
    emit(state.copyWith(brightnessMode: event.themeMode));
  }

  Future<void> _onChangeUseModifiers(
    ChangeUseModifiersEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await _settingsRepo.useGradeModifiersKey.setValue(event.useModifiers);
    emit(state.copyWith(useModifiers: event.useModifiers));
  }

  Future<void> _onChangeUseAvgGradeCalcFormula(
    ChangeUseAvgGradeCalcFormulaEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await _settingsRepo.useBesteSchuleGradeAvgCalcFormula.setValue(
      event.useAvgGradeCalcFormula,
    );
    emit(state.copyWith(useAvgGradeCalcFormula: event.useAvgGradeCalcFormula));
  }

  Future<void> _onChangeSelectedYear(
    ChangeSelectedYearEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await _settingsRepo.selectedYear.setValue(event.yearId);
    emit(state.copyWith(selectedYearId: event.yearId));
  }
}
