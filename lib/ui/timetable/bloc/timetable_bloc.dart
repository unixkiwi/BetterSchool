import 'dart:async';

import 'package:betterschool/config/constants.dart';
import 'package:betterschool/data/repositories/timetable/timetable_repo.dart';
import 'package:betterschool/domain/models/schoolday.dart';
import 'package:betterschool/domain/models/week.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:betterschool/utils/result.dart';
import 'package:betterschool/utils/time_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'timetable_event.dart';
part 'timetable_state.dart';

class TimetableBloc extends Bloc<TimetableEvent, TimetableState> {
  final TimetableRepo _repo;
  Set<WeekString> _loadingWeeks = Set.of([]);

  TimetableBloc(this._repo) : super(TimetableStateLoading()) {
    on<TimetablePageStartedEvent>(_onPageLoaded);
    on<TimetableRefreshEvent>(_onRefresh);
    on<TimetablePageSwitchEvent>(_onPageSwitch);
    on<TimetableDatebarBackButtonPressedEvent>(_onDatebarBackBtnPressed);
    on<TimetableDatebarNextButtonPressedEvent>(_onDatebarNextBtnPressed);
  }

  Future<void> _onRefresh(
    TimetableRefreshEvent event,
    Emitter<TimetableState> emit,
  ) async {
    final completer = event.completer;
    WeekString targetWeek = event.weekString;

    // add weekstring to loading weeks
    _loadingWeeks.add(targetWeek);

    try {
      Result<SchoolWeek> response = await _repo.getWeek(
        targetWeek,
        forceRefresh: true,
      );

      TimetableState receivedState = _handleSchoolWeekResult(
        response,
        emit,
        targetWeek,
      );

      if (receivedState is TimetableWeekState) {
        emit(
          TimetableWeekState(
            weekNr: receivedState.weekNr,
            days: receivedState.days,
            moveTo: 1,
          ),
        );
      } else {
        emit(receivedState);
      }
    } finally {
      // remove weekstring from loading weeks
      _loadingWeeks.remove(targetWeek);
      // signal completion to the caller
      try {
        completer?.complete();
      } catch (_) {
        // ignore if already completed
      }
    }
  }

  Future<void> _onDatebarBackBtnPressed(
    TimetableDatebarBackButtonPressedEvent event,
    Emitter<TimetableState> emit,
  ) async {
    await _onPageSwitch(
      TimetablePageSwitchEvent(
        page: 0,
        isLastPage: false,
        weekString: event.weekString,
      ),
      emit,
    );
  }

  Future<void> _onDatebarNextBtnPressed(
    TimetableDatebarNextButtonPressedEvent event,
    Emitter<TimetableState> emit,
  ) async {
    await _onPageSwitch(
      TimetablePageSwitchEvent(
        page: 6,
        isLastPage: true,
        weekString: event.weekString,
      ),
      emit,
    );
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
      WeekString nextWeek = WeekString.fromDate(
        event.weekString.toDate().add(Duration(days: 7)),
      );

      if (_loadingWeeks.contains(nextWeek)) {
        logger.w(
          "⏳ Week ${nextWeek.toString()} is already being loaded, skipping...",
        );
        return;
      }

      // show loading page
      emit(TimetableStateLoading());

      // add week to loading
      _loadingWeeks.add(nextWeek);

      Result<SchoolWeek> response = await _repo.getWeek(nextWeek);

      TimetableState state = _handleSchoolWeekResult(response, emit, nextWeek);

      if (state is TimetableWeekState) {
        emit(
          TimetableWeekState(weekNr: state.weekNr, days: state.days, moveTo: 1),
        );
      } else {
        emit(state);
      }

      // remove the loading week
      _loadingWeeks.remove(nextWeek);
    }
    // load next week
    else if (event.page == 0) {
      WeekString prevWeek = WeekString.fromDate(
        event.weekString.toDate().subtract(Duration(days: 7)),
      );

      if (_loadingWeeks.contains(prevWeek)) {
        logger.w(
          "⏳ Week ${prevWeek.toString()} is already being loaded, skipping...",
        );
        return;
      }

      // show loading page
      emit(TimetableStateLoading());

      // add week to loading
      _loadingWeeks.add(prevWeek);

      Result<SchoolWeek> response = await _repo.getWeek(prevWeek);

      TimetableState state = _handleSchoolWeekResult(response, emit, prevWeek);

      if (state is TimetableWeekState) {
        // state.days.length because the first page is a loading page so I can use length and do not need to subtract
        emit(
          TimetableWeekState(
            weekNr: state.weekNr,
            days: state.days,
            moveTo: state.days.length,
          ),
        );
      } else {
        emit(state);
      }

      // remove the loading week
      _loadingWeeks.remove(prevWeek);
    }
  }

  bool isAfter1730() {
    final DateTime now = DateTime.now();

    return now.isAfter(DateTime(now.year, now.month, now.day, 17, 30));
  }

  Future<void> _onPageLoaded(
    TimetablePageStartedEvent event,
    Emitter<TimetableState> emit,
  ) async {
    DateTime now = DateTime.now();
    WeekString targetWeek;
    int moveTo;

    if (now.weekday > 5 || (now.weekday == 5 && isAfter1730())) {
      // get next week
      targetWeek = WeekString.fromDate(now.add(Duration(days: 3)));
      moveTo = 1;
    } else if (isAfter1730()) {
      targetWeek = WeekString.fromDate(now);
      moveTo = now.weekday + 1;
    } else {
      targetWeek = WeekString.fromDate(DateTime.now());
      moveTo = now.weekday;
    }

    if (_loadingWeeks.contains(targetWeek)) {
      logger.w(
        "⏳ Week ${targetWeek.toString()} is already being loaded, skipping...",
      );
      return;
    }

    // add weekstring to loading weeks
    _loadingWeeks.add(targetWeek);

    Result<SchoolWeek> response = await _repo.getWeek(targetWeek);

    TimetableState receivedState = _handleSchoolWeekResult(
      response,
      emit,
      targetWeek,
    );

    if (receivedState is TimetableWeekState) {
      emit(
        TimetableWeekState(
          weekNr: receivedState.weekNr,
          days: receivedState.days,
          moveTo: moveTo,
        ),
      );
    } else {
      emit(receivedState);
    }

    // remove weekstring from loading weeks
    _loadingWeeks.remove(targetWeek);
  }

  TimetableState _handleSchoolWeekResult(
    Result<SchoolWeek> response,
    Emitter<TimetableState> emit,
    WeekString week,
  ) {
    if (response is Success<SchoolWeek>) {
      if (response.value.days.isNotEmpty) {
        List<SchoolDay> days = response.value.days
            .where((day) => day.date.weekday <= 5)
            .toList();

        return TimetableWeekState(weekNr: week, days: days);
      } else {
        return TimetableWeekState(weekNr: week, days: []);
      }
    } else if (response is Error<SchoolWeek>) {
      Exception error = response.error;

      if (error is DioException) {
        if (error.response?.statusCode == noInternetDioStatusCode ||
            error.type == DioExceptionType.connectionError ||
            error.type == DioExceptionType.connectionTimeout) {
          return TimetableErrorState(
            title: "No Internet Connection",
            description:
                "It seems like your phone is not connected to the internet. Thats why we couldn't fetch the data for your timetable!",
            errorType: TimetableError.noConnection,
          );
        } else if (error.response?.statusCode == unauthorizedStatusCode ||
            error.response?.statusCode == forbiddenStatusCode) {
          return TimetableErrorState(
            title: "Forbidden/Unauthorized",
            description:
                "Your request was rejected because it is either unauthorized or forbidden. (${error.response?.statusCode})",
            errorType: TimetableError.forbidden,
          );
        } else {
          logger.e(error.response?.data);
          logger.e(error.type.toString());
          logger.e(error.requestOptions.path);

          return TimetableErrorState(
            title:
                "An error occurred while fetching the data for your timetable. (${error.response?.statusCode} ${error.response?.statusMessage})",
            description: error.message ?? error.toString(),
            errorType: TimetableError.other,
          );
        }
      } else {
        return TimetableErrorState(
          title:
              "An error occurred while fetching the data for your timetable.",
          description: error.toString(),
          errorType: TimetableError.other,
        );
      }
    }

    return TimetableErrorState(
      title: "An error occured while fetching the data for your timetable.",
      description: "No description provided",
      errorType: TimetableError.other,
    );
  }
}
