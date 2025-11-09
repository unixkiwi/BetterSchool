part of 'timetable_bloc.dart';

@immutable
sealed class TimetableEvent {}

final class TimetablePageStartedEvent extends TimetableEvent {}

final class TimetableRefreshEvent extends TimetableEvent {}

// Datebar
final class TimetableDatebarBackButtonPressedEvent extends TimetableEvent {
  final WeekString weekString;

  TimetableDatebarBackButtonPressedEvent({required this.weekString});
}

final class TimetableDatebarNextButtonPressedEvent extends TimetableEvent {
  final WeekString weekString;

  TimetableDatebarNextButtonPressedEvent({required this.weekString});
}

final class TimetablePageSwitchEvent extends TimetableEvent {
  final int page;
  final bool isLastPage;
  final WeekString weekString;

  TimetablePageSwitchEvent({
    required this.page,
    required this.isLastPage,
    required this.weekString,
  });
}
