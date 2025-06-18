import 'package:flutter/material.dart';

bool _isDark(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark;
}

Color getCancelled(BuildContext context) {
  return _isDark(context)
      ? darkLessonTileTheme['cancelled']!
      : lightLessonTileTheme['cancelled']!;
}

Color getHold(BuildContext context) {
  return _isDark(context)
      ? darkLessonTileTheme['hold']!
      : lightLessonTileTheme['hold']!;
}

Color getPlanned(BuildContext context) {
  return _isDark(context)
      ? darkLessonTileTheme['planned']!
      : lightLessonTileTheme['planned']!;
}

Color getInitial(BuildContext context) {
  return _isDark(context)
      ? darkLessonTileTheme['initial']!
      : lightLessonTileTheme['initial']!;
}

final Map<String, Color> darkLessonTileTheme = {
  'cancelled': Colors.red.shade900, 
  'hold': Colors.blueGrey.shade900,
  'planned': Colors.blue.shade800, 
  'initial': Colors.blue.shade900, 
};

//TODO change light mode colors
final Map<String, Color> lightLessonTileTheme = {
  'cancelled': Colors.red.shade900,
  'hold': Colors.blueGrey.shade900,
  'planned': Colors.blueGrey.shade900,
  'initial': Colors.blueGrey.shade800,
};
