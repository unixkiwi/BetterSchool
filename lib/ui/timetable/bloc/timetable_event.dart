part of 'timetable_bloc.dart';

@immutable
sealed class TimetableEvent {}

final class TimetablePageStartedEvent extends TimetableEvent {}

final class TimetablePageSwitchEvent extends TimetableEvent {
  final int page;
  final bool isLastPage;

  TimetablePageSwitchEvent({required this.page, required this.isLastPage});
}
