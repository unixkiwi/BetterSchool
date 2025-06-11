import 'package:flutter/material.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/domain/models/subject.dart';

class TimetableLessonTile extends StatelessWidget {
  final Lesson lesson;

  const TimetableLessonTile({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    Subject subject = lesson.subject;

    //TODO improve information
    return ListTile(
      title: Text(subject.shortName),
      subtitle: Text(lesson.rooms[0]),
      style: Theme.of(context).listTileTheme.style,
    );
  }
}
