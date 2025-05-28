import 'package:flutter/material.dart';
import 'package:school_app/domain/models/lesson_note.dart';

class TaskTile extends StatelessWidget {
  final LessonNote note;

  const TaskTile({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // lesson name
        Text(note.lesson.shortName),

        // content of the note
        Text(note.desc)
      ],
    );
  }
}