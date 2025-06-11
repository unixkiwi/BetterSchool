import 'package:flutter/material.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/presentation/pages/timetable_page/lesson_tile_timetable.dart';

class DayLessonsList extends StatelessWidget {
  final List<Lesson?> lessons;

  const DayLessonsList({super.key, required this.lessons});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lessons.length,
      itemBuilder: (context, index) {
        if (lessons[index] == null) {
          return Column(
            children: [
              ListTile(title: Text("Lesson is null")),
              Divider(height: 0),
            ],
          );
        } else {
          return Column(
            children: [
              TimetableLessonTile(lesson: lessons[index]!),
              Divider(height: 0),
            ],
          );
        }
      },
    );
  }
}
