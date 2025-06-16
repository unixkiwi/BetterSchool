import 'package:flutter/material.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/domain/models/subject.dart';
import 'package:school_app/presentation/pages/timetable_page/lesson_tile_bottom_sheet.dart';

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

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          onTap: () {
            showLessonTileBottomSheet(context, lesson);
          },
          title: Text(subject.name),
          subtitle: Row(
            children: [
              Row(
                children: lesson.rooms.map((room) => Text("$room ")).toList(),
              ),
              Padding(padding: EdgeInsets.only(right: 8)),
              Row(
                children:
                    lesson.teachers
                        .map((teacher) => Text("${teacher.short} "))
                        .toList(),
              ),
            ],
          ),
          style: Theme.of(context).listTileTheme.style,
        ),
      ),
    );
  }

  
}
