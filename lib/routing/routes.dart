import 'package:betterschool/config/di.dart';
import 'package:betterschool/ui/grades/pages/grades_page.dart';
import 'package:betterschool/ui/home_navbar/pages/home_page.dart';
import 'package:betterschool/ui/login/pages/login_page.dart';
import 'package:betterschool/ui/settings/pages/settings_page.dart';
import 'package:betterschool/ui/timetable/pages/bloc/timetable_bloc.dart';
import 'package:betterschool/ui/timetable/pages/timetable_page.dart';
import 'package:betterschool/utils/logger.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final String loginRoute = "/login";
Widget loginPage(BuildContext context) => const LoginPage();

final String homeRoute = "/home";
Widget homeNavBarPage(BuildContext context) => const HomePageNavBar();

final String timetableRoute = "/timetable";
Widget timetablePage(BuildContext context) {
  logger.d("Called Timetable route");

  return BlocProvider<TimetableBloc>(
    create: (context) {
      logger.d("Called BlocProvider create method");
      return sl<TimetableBloc>()..add(TimetablePageStartedEvent());
    },
    child: const TimetablePage(),
  );
}

final String gradesRoute = "/grades";
Widget gradesPage(BuildContext context) => const GradesPage();

final String settingsRoute = "/settings";
Widget settingsPage(BuildContext context) => const SettingsPage();

final Map<String, WidgetBuilder> routes = {
  loginRoute: loginPage,
  homeRoute: homeNavBarPage,
  timetableRoute: timetablePage,
  gradesRoute: gradesPage,
  settingsRoute: settingsPage,
};
