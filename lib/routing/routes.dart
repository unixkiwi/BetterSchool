import 'package:betterschool/ui/grades/pages/grades_page.dart';
import 'package:betterschool/ui/home_navbar/pages/home_page.dart';
import 'package:betterschool/ui/login/pages/login_page.dart';
import 'package:betterschool/ui/settings/pages/settings_page.dart';
import 'package:betterschool/ui/timetable/pages/timetable_page.dart';
import 'package:flutter/widgets.dart';

final String loginRoute = "/login";
final String homeRoute = "/home";
final String timetableRoute = "/timetable";
final String gradesRoute = "/grades";
final String settingsRoute = "/settings";

final Map<String, WidgetBuilder> routes = {
  loginRoute: (BuildContext context) => const LoginPage(),
  homeRoute: (BuildContext context) => const HomePageNavBar(),
  timetableRoute: (BuildContext context) => const TimetablePage(),
  gradesRoute: (BuildContext context) => const GradesPage(),
  settingsRoute: (BuildContext context) => const SettingsPage(),
};
