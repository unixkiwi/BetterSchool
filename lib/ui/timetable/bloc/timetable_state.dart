part of 'timetable_bloc.dart';

@immutable
sealed class TimetableState {}

final class TimetableStateLoading extends TimetableState {}

enum TimetableError { noConnection, forbidden, other }

final class TimetableErrorState extends TimetableState {
  final String title;
  final String description;
  final TimetableError errorType;

  TimetableErrorState({
    required this.title,
    required this.description,
    required this.errorType,
  });
}

final class TimetableWeekState extends TimetableState {
  final WeekString weekNr;
  final List<SchoolDay> days;
  final int? moveTo;

  TimetableWeekState({required this.weekNr, required this.days, this.moveTo});
}
