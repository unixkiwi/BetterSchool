import 'package:betterschool/domain/models/schoolday.dart';
import 'package:betterschool/ui/timetable/pages/timetable_week/timetable_day_empty_page.dart';
import 'package:betterschool/ui/timetable/pages/timetable_week/timetable_lesson_tile.dart';
import 'package:flutter/material.dart';

class TimetableDayPage extends StatelessWidget {
  final SchoolDay day;

  const TimetableDayPage({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    if (day.lessons.isEmpty) {
      return TimetableDayEmptyPage();
    }

    return ListView.builder(
      itemBuilder: (context, index) {
        return TimetableLessonTile(lesson: day.lessons[index]);
      },
      itemCount: day.lessons.length,
    );
  }
}
