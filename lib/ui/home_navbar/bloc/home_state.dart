part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomePageSelectedState extends HomeState {
  final WidgetBuilder page;
  final int index;

  HomePageSelectedState({required this.page, required this.index});
}

final class HomePageLoading extends HomeState {}
