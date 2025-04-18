import 'package:flutter/material.dart';

import '../../domain/models/lesson.dart';

class OverviewLessonTile extends StatelessWidget {
  final Lesson lesson;

  const OverviewLessonTile({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: Column(
        children: [Text(lesson.shortName), Text(lesson.rooms.join(", "))],
      ),
    );
  }
}
