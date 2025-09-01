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
        return Padding(
          padding: index != day.lessons.length - 1
              ? const EdgeInsets.only(bottom: 4, left: 8, right: 8)
              : const EdgeInsets.symmetric(horizontal: 8),
          child: TimetableLessonTile(
            lesson: day.lessons[index],
            isLast: index == day.lessons.length - 1,
            isFirst: index == 0,
          ),
        );
      },
      itemCount: day.lessons.length,
    );
  }
}
