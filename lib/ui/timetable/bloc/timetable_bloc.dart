import 'package:betterschool/data/models/timetable/models.dart';
import 'package:betterschool/data/repositories/timetable/timetable_repo.dart';
import 'package:betterschool/utils/result.dart';
import 'package:betterschool/utils/time_utils.dart';
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

    if (response is Success<SchoolWeekModel>) {
      emit(TimetableStateTest(response.value.days ?? []));
    } else {
      emit(TimetableStateLoading());
    }
  }
}
