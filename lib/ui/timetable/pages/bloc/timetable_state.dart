part of 'timetable_bloc.dart';

@immutable
sealed class TimetableState {}

final class TimetableStateLoading extends TimetableState {}

final class TimetableStateTest extends TimetableState {
  final List<Task> tasks;

  TimetableStateTest(this.tasks);
}
