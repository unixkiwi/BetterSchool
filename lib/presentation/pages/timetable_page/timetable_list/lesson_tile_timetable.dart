import 'package:flutter/material.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/domain/models/subject.dart';
import 'package:school_app/presentation/pages/timetable_page/lesson_bottom_sheet_components/lesson_tile_bottom_sheet.dart';
import 'package:school_app/presentation/pages/timetable_page/timetable_list/lesson_tile_colors.dart';

class TimetableLessonTile extends StatelessWidget {
  final Lesson lesson;

  const TimetableLessonTile({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    Subject subject = lesson.subject;

    var bgColor = (switch (lesson.status) {
      LessonStatus.CANCELLED => getCancelled(context),
      LessonStatus.HOLD => getHold(context),
      LessonStatus.PLANNED => getPlanned(context),
      LessonStatus.INITIAL => getInitial(context),
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
          title: Text(
            subject.name,
            style:
                Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ) ??
                TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing:
              lesson.status == LessonStatus.PLANNED
                  ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {},
                      child: Tooltip(
                        message: "This lesson was changed",
                        triggerMode: TooltipTriggerMode.tap,
                        preferBelow: false,
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: 12.0,
                            bottom: 12.0,
                            right: 6.0,
                            left: 6.0,
                          ), // Increase hit area
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                          ),
                          child: Icon(Icons.new_releases_rounded),
                        ),
                      ),
                    ),
                  )
                  : null,
          subtitle: Row(
            children: [
              Wrap(
                spacing: 4,
                children:
                    lesson.rooms
                        .map(
                          (room) => Chip(
                            backgroundColor:
                                Theme.of(
                                  context,
                                ).colorScheme.surfaceContainerHighest,
                            padding: EdgeInsets.all(2),
                            label: Text(room),
                          ),
                        )
                        .toList(),
              ),
              Padding(padding: EdgeInsets.only(right: 8)),
              Wrap(
                spacing: 2,
                children:
                    lesson.teachers
                        .map(
                          (teacher) => Chip(
                            backgroundColor:
                                Theme.of(
                                  context,
                                ).colorScheme.surfaceContainerHighest,
                            padding: EdgeInsets.all(2),
                            label: Text(teacher.short),
                          ),
                        )
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
