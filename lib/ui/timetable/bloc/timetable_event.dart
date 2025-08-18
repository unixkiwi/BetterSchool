part of 'timetable_bloc.dart';

@immutable
sealed class TimetableEvent {}

final class TimetablePageStartedEvent extends TimetableEvent {}
