import 'package:betterschool/config/constants.dart';
import 'package:betterschool/data/repositories/grades/grade_repo.dart';
import 'package:betterschool/domain/models/grade.dart';
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

  GradesBloc(this._repo) : super(GradesStateLoading()) {
    on<GradesPageStartedEvent>(_onPageLoaded);
  }

  Future<void> _onPageLoaded(
    GradesPageStartedEvent event,
    Emitter<GradesState> emit,
  ) async {
    Result<List<Grade>> response = await _repo.getGrades();

    GradesState receivedState = _handleResult(response, emit);

    emit(receivedState);
  }

  GradesState _handleResult(
    Result<List<Grade>> response,
    Emitter<GradesState> emit,
  ) {
    if (response is Success<List<Grade>>) {
      if ((response).value.isNotEmpty) {
        return GradesDataState((response).value);
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
