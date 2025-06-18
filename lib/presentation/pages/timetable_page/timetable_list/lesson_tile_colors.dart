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
  'planned': Colors.blueGrey.shade800, 
  'initial': Colors.blueGrey.shade900, 
};

final Map<String, Color> lightLessonTileTheme = {
  'cancelled': Colors.redAccent.shade200,
  'hold': Colors.blueGrey.shade500,
  'planned': Colors.blueGrey.shade400,
  'initial': Colors.blueGrey.shade400,
};
