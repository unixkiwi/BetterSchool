import 'package:betterschool/config/constants.dart';
import 'package:betterschool/data/repositories/timetable/timetable_repo.dart';
import 'package:betterschool/domain/models/schoolday.dart';
import 'package:betterschool/domain/models/week.dart';
import 'package:betterschool/utils/logger.dart';
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
    on<TimetablePageSwitchEvent>(_onPageSwitch);
  }

  Future<void> _onPageSwitch(
    TimetablePageSwitchEvent event,
    Emitter<TimetableState> emit,
  ) async {
    // check for need to load new page
    // if new page needs to be loaded

    // 0 == first page -> loading page
    // last page given through parameter
    // load prev week
    if (event.isLastPage) {
      WeekString nextWeek = WeekString.fromDate(event.weekString.toDate().add(Duration(days: 7)));
      Result<SchoolWeek> response = await _repo.getWeek(nextWeek);

      _handleSchoolWeekResult(response, emit, nextWeek);
    }
    // load next week
    else if (event.page == 0) {
      WeekString prevWeek = WeekString.fromDate(event.weekString.toDate().subtract(Duration(days: 7)));
      Result<SchoolWeek> response = await _repo.getWeek(prevWeek);

      _handleSchoolWeekResult(response, emit, prevWeek);
    }
  }

  Future<void> _onPageLoaded(
    TimetablePageStartedEvent event,
    Emitter<TimetableState> emit,
  ) async {
    WeekString now = WeekString.fromDate(DateTime.now());

    Result<SchoolWeek> response = await _repo.getWeek(now);

    _handleSchoolWeekResult(response, emit, now);
  }

  void _handleSchoolWeekResult(
    Result<SchoolWeek> response,
    Emitter<TimetableState> emit,
    WeekString week,
  ) {
    if (response is Success<SchoolWeek>) {
      if (response.value.days.isNotEmpty) {
        List<SchoolDay> days = response.value.days
            .where((day) => day.date.weekday <= 5)
            .toList();

        emit(TimetableWeekState(weekNr: week, days: days));
      } else {
        emit(TimetableEmptyState());
      }
    } else if (response is Error<SchoolWeek>) {
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
          logger.e(error.response?.data);
          logger.e(error.type.toString());
          logger.e(error.requestOptions.path);
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
