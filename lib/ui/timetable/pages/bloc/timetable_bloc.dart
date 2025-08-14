import 'package:betterschool/data/services/beste_schule_api/beste_schule_api_client_impl.dart';
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
    emit(TimetableStateTest(await _apiClient.getTasks()));
  }
}
