import 'package:betterschool/data/models/core/models.dart';
import 'package:betterschool/data/models/timetable/models.dart';
import 'package:betterschool/data/services/beste_schule_api/beste_schule_api_client_impl.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'timetable_state.dart';
part 'timetable_event.dart';

class TimetableBloc extends Bloc<TimetableEvent, TimetableState> {
  final BesteSchuleApiClientImpl _apiClient;

  TimetableBloc(this._apiClient) : super(TimetableStateLoading()) {
    on<TimetablePageStartedEvent>(_onPageLoaded);
  }

  Future<void> _onPageLoaded(
    TimetablePageStartedEvent event,
    Emitter<TimetableState> emit,
  ) async {
    try {
      BesteSchuleApiResponse<SchoolWeekModel> resp = await _apiClient.getWeek(
        weekId: "2025-33",
      );

      emit(TimetableStateTest(resp.data!.days ?? []));
    } on DioException catch (e) {
      logger.e(e);
    }
  }
}
