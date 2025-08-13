part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class DestinationTappedEvent extends HomeEvent {
  final int index;

  DestinationTappedEvent({required this.index});
}
