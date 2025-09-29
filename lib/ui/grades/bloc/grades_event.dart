part of 'grades_bloc.dart';

@immutable
sealed class GradesEvent {}

final class GradesPageStartedEvent extends GradesEvent {}
