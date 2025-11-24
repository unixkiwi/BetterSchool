part of 'grades_bloc.dart';

@immutable
sealed class GradesEvent {}

final class GradesPageStartedEvent extends GradesEvent {}

final class GradesPageRefreshedEvent extends GradesEvent {
  final Completer<void>? completer;

  GradesPageRefreshedEvent({this.completer});
}
