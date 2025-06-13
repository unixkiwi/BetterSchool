import 'package:flutter/material.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/domain/models/subject.dart';

class TimetableLessonTile extends StatelessWidget {
  final Lesson lesson;

  const TimetableLessonTile({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    Subject subject = lesson.subject;

    var bgColor = (switch (lesson.status) {
      LessonStatus.CANCELLED => Theme.of(context).colorScheme.errorContainer,
      LessonStatus.HOLD => Theme.of(context).colorScheme.tertiaryContainer,
      LessonStatus.PLANNED => Theme.of(context).colorScheme.primaryContainer,
      LessonStatus.INITIAL => Theme.of(context).colorScheme.secondaryContainer,
    });

    //TODO improve information
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(subject.shortName),
          subtitle: Row(
            children: lesson.rooms.map((room) => Text(room)).toList(),
          ),
          style: Theme.of(context).listTileTheme.style,
        ),
      ),
    );
  }
}
