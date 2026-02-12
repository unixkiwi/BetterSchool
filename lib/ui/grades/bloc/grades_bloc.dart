import 'dart:async';

import 'package:betterschool/config/constants.dart';
import 'package:betterschool/data/repositories/grades/grade_repo.dart';
import 'package:betterschool/data/repositories/settings/settings_repository.dart';
import 'package:betterschool/domain/models/grade.dart';
import 'package:betterschool/domain/models/grade_calculation_rule.dart';
import 'package:betterschool/ui/grades/utils/grade_helpers.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:betterschool/utils/result.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'grades_event.dart';
part 'grades_state.dart';

class GradesBloc extends Bloc<GradesEvent, GradesState> {
  final GradeRepo _repo;
  final SettingsRepository _settingsRepository;

  GradesBloc(this._repo, this._settingsRepository)
    : super(GradesStateLoading()) {
    on<GradesPageStartedEvent>(_onPageLoaded);
    on<GradesPageRefreshedEvent>(_onRefresh);
  }

  Future<void> _onRefresh(
    GradesPageRefreshedEvent event,
    Emitter<GradesState> emit,
  ) async {
    final completer = event.completer;

    try {
      Result<List<Grade>> response = await _repo.getGrades(forceRefresh: true);

      Result<List<GradeCalculationRule>>? calcRulesResponse;

      if (_settingsRepository.useBesteSchuleGradeAvgCalcFormula.getValue()) {
        calcRulesResponse = await _repo.getGradeCalculationRules();
      }

      GradesState receivedState = _handleResult(
        response,
        emit,
        calcRulesResponse: calcRulesResponse,
      );

      emit(receivedState);
    } finally {
      // signal completion to the caller
      try {
        completer?.complete();
      } catch (_) {
        // ignore if already completed
      }
    }
  }

  Future<void> _onPageLoaded(
    GradesPageStartedEvent event,
    Emitter<GradesState> emit,
  ) async {
    Result<List<Grade>> response = await _repo.getGrades();

    Result<List<GradeCalculationRule>>? calcRulesResponse;

    if (_settingsRepository.useBesteSchuleGradeAvgCalcFormula.getValue()) {
      calcRulesResponse = await _repo.getGradeCalculationRules();
    }

    GradesState receivedState = _handleResult(
      response,
      emit,
      calcRulesResponse: calcRulesResponse,
    );

    emit(receivedState);
  }

  GradesState _handleResult(
    Result<List<Grade>> response,
    Emitter<GradesState> emit, {
    Result<List<GradeCalculationRule>>? calcRulesResponse,
  }) {
    if (response is Success<List<Grade>>) {
      if ((response).value.isNotEmpty) {
        List<GradeCalculationRule>? calcRules;

        if (calcRulesResponse is Error<List<GradeCalculationRule>>) {
          logger.e(
            'Error fetching grade calculation rules: ${(calcRulesResponse as Error).error.toString()}',
          );

          calcRules = null;
        } else if (calcRulesResponse is Success<List<GradeCalculationRule>>) {
          calcRules = (calcRulesResponse).value;
        }

        return GradesDataState(
          calculateGradesData(
            (response).value,
            useModifier: _settingsRepository.useGradeModifiersKey.getValue(),
            useBesteSchuleFormula: _settingsRepository
                .useBesteSchuleGradeAvgCalcFormula
                .getValue(),
            calculationRules: calcRules,
          ),
        );
      } else {
        return GradesEmptyState();
      }
    } else if (response is Error<List<Grade>>) {
      Exception error = response.error;

      if (error is DioException) {
        if (error.response?.statusCode == noInternetDioStatusCode ||
            error.type == DioExceptionType.connectionError ||
            error.type == DioExceptionType.connectionTimeout) {
          return GradesErrorState(
            title: "No Internet Connection",
            description:
                "It seems like your phone is not connected to the internet. That's why we couldn't fetch your grades!",
            errorType: GradesError.noConnection,
          );
        } else if (error.response?.statusCode == unauthorizedStatusCode ||
            error.response?.statusCode == forbiddenStatusCode) {
          return GradesErrorState(
            title: "Forbidden/Unauthorized",
            description:
                "Your request was rejected because it is either unauthorized or forbidden. (${error.response?.statusCode})",
            errorType: GradesError.forbidden,
          );
        } else {
          logger.e(error.response?.data);
          logger.e(error.type.toString());
          logger.e(error.requestOptions.path);

          return GradesErrorState(
            title:
                "An error occurred while fetching the data for your grades. (${error.response?.statusCode} ${error.response?.statusMessage})",
            description: error.message ?? error.toString(),
            errorType: GradesError.other,
          );
        }
      } else {
        return GradesErrorState(
          title: "An error occurred while fetching the data for your grades.",
          description: error.toString(),
          errorType: GradesError.other,
        );
      }
    }

    return GradesErrorState(
      title: "An error occured while fetching the data for your grades.",
      description: "No description provided",
      errorType: GradesError.other,
    );
  }
}
