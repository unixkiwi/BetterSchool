import 'package:betterschool/config/constants.dart';
import 'package:betterschool/data/models/timetable/models.dart';
import 'package:betterschool/data/repositories/timetable/timetable_repo.dart';
import 'package:betterschool/utils/result.dart';
import 'package:betterschool/utils/time_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'timetable_state.dart';
part 'timetable_event.dart';

class TimetableBloc extends Bloc<TimetableEvent, TimetableState> {
  final TimetableRepo _repo;

  TimetableBloc(this._repo) : super(TimetableStateLoading()) {
    on<TimetablePageStartedEvent>(_onPageLoaded);
  }

  Future<void> _onPageLoaded(
    TimetablePageStartedEvent event,
    Emitter<TimetableState> emit,
  ) async {
    Result<SchoolWeekModel> response = await _repo.getWeek(
      WeekString.fromDate(DateTime.now()),
    );

    if (response is Success<SchoolWeekModel> && response.value.days != null) {
      if (response.value.days!.isNotEmpty) {
        emit(TimetableWeekState(response.value.days!));
      } else {
        emit(TimetableEmptyState());
      }
    } else if (response is Error<SchoolWeekModel>) {
      Exception error = response.error;

      if (error is DioException) {
        if (error.response?.statusCode == noInternetDioStatusCode ||
            error.type == DioExceptionType.connectionError ||
            error.type == DioExceptionType.connectionTimeout) {
          emit(
            TimetableErrorState(
              title: "No Internet Connection",
              description:
                  "It seems like your phone is not connected to the internet. Thats why we couldn't fetch the data for your timetable!",
              errorType: TimetableError.noConnection,
            ),
          );
        } else if (error.response?.statusCode == unauthorizedStatusCode ||
            error.response?.statusCode == forbiddenStatusCode) {
          emit(
            TimetableErrorState(
              title: "Forbidden/Unauthorized",
              description:
                  "Your request was rejected because it is either unauthorized or forbidden. (${error.response?.statusCode})",
              errorType: TimetableError.forbidden,
            ),
          );
        } else {
          emit(
            TimetableErrorState(
              title:
                  "An error occurred while fetching the data for your timetable. (${error.response?.statusCode} ${error.response?.statusMessage})",
              description: error.message ?? error.toString(),
              errorType: TimetableError.other,
            ),
          );
        }
      } else {
        emit(
          TimetableErrorState(
            title:
                "An error occurred while fetching the data for your timetable.",
            description: error.toString(),
            errorType: TimetableError.other,
          ),
        );
      }
    }
  }
}
