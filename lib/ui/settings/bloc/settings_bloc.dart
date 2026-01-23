import 'package:betterschool/data/repositories/settings/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsRepository _repo;

  SettingsBloc(this._repo)
    : super(
        SettingsState(
          brightnessMode: _repo.brightness.getValue(),
          useModifiers: _repo.useGradeModifiersKey.getValue(),
          useAvgGradeCalcFormula: _repo.useBesteSchuleGradeAvgCalcFormula
              .getValue(),
        ),
      ) {
    on<LoadSettingsEvent>(_onLoad);
    on<ChangeThemeModeEvent>(_onChangeThemeMode);
    on<ChangeUseModifiersEvent>(_onChangeUseModifiers);
    on<ChangeUseAvgGradeCalcFormulaEvent>(_onChangeUseAvgGradeCalcFormula);
  }

  void _onLoad(LoadSettingsEvent event, Emitter<SettingsState> emit) {
    emit(
      state.copyWith(
        brightnessMode: _repo.brightness.getValue(),
        useModifiers: _repo.useGradeModifiersKey.getValue(),
        useAvgGradeCalcFormula: _repo.useBesteSchuleGradeAvgCalcFormula
            .getValue(),
      ),
    );
  }

  Future<void> _onChangeThemeMode(
    ChangeThemeModeEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await _repo.brightness.setValue(event.themeMode);
    emit(state.copyWith(brightnessMode: event.themeMode));
  }

  Future<void> _onChangeUseModifiers(
    ChangeUseModifiersEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await _repo.useGradeModifiersKey.setValue(event.useModifiers);
    emit(state.copyWith(useModifiers: event.useModifiers));
  }

  Future<void> _onChangeUseAvgGradeCalcFormula(
    ChangeUseAvgGradeCalcFormulaEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await _repo.useBesteSchuleGradeAvgCalcFormula.setValue(
      event.useAvgGradeCalcFormula,
    );
    emit(state.copyWith(useAvgGradeCalcFormula: event.useAvgGradeCalcFormula));
  }
}
