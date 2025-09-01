import 'package:betterschool/routing/routes.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class NavBarEntry {
  final Widget page;
  final NavigationDestination destination;

  const NavBarEntry({required this.page, required this.destination});
}

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static final List<WidgetBuilder> _pages = [
    timetablePage,
    gradesPage,
    settingsPage,
  ];
  final List<NavigationDestination> _destinations = const [
    NavigationDestination(
      icon: Icon(Icons.calendar_month_outlined),
      selectedIcon: Icon(Icons.calendar_month_rounded),
      label: 'Timetable',
    ),
    NavigationDestination(
      icon: Icon(Icons.leaderboard_outlined),
      selectedIcon: Icon(Icons.leaderboard_rounded),
      label: 'Grades',
    ),
    NavigationDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings_rounded),
      label: 'Settings',
    ),
  ];

  List<WidgetBuilder> get pages => _pages;

  List<NavigationDestination> get destinations => _destinations;

  HomeBloc()
    : super(
        _pages.isEmpty
            ? HomePageLoading()
            : HomePageSelectedState(page: _pages.first, index: 0),
      ) {
    on<DestinationTappedEvent>(_onDestinationTapped);
  }

  void _onDestinationTapped(
    DestinationTappedEvent event,
    Emitter<HomeState> emit,
  ) {
    logger.d("Received navbar tapped event: index : ${event.index}");

    if (_pages.length > event.index && event.index >= 0) {
      emit(
        HomePageSelectedState(page: _pages[event.index], index: event.index),
      );
    } else {
      emit(HomePageLoading());
    }
  }
}
