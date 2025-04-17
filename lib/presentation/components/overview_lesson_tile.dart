import 'package:flutter/material.dart';

import '../../domain/models/lesson.dart';

class OverviewLessonTile extends StatelessWidget {
  final List<Lesson> lessons;

  const OverviewLessonTile({super.key, required this.lessons});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          lessons.map((lesson) {
            return Text(lesson.shortName + " ");
          }).toList(),
    );
  }
}
