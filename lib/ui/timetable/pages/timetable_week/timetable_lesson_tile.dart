import 'package:betterschool/domain/models/lesson.dart';
import 'package:betterschool/domain/models/subject.dart';
import 'package:betterschool/ui/core/widgets/field_chip.dart';
import 'package:betterschool/ui/timetable/pages/timetable_week/lessontile_bottomsheet/timetable_lessontile_details_screen.dart';
import 'package:flutter/material.dart';

class TimetableLessonTile extends StatelessWidget {
  final Lesson lesson;
  final bool isLast;
  final bool isFirst;

  const TimetableLessonTile({
    super.key,
    required this.lesson,
    this.isLast = false,
    this.isFirst = false,
  });

  static final Widget chipPadding = Padding(padding: EdgeInsets.only(right: 4));

  BorderRadius _getBorderRadius() {
    if (isLast) {
      return BorderRadius.vertical(
        top: Radius.circular(4),
        bottom: Radius.circular(12),
      );
    } else if (isFirst) {
      return BorderRadius.vertical(
        bottom: Radius.circular(4),
        top: Radius.circular(12),
      );
    } else {
      return BorderRadius.circular(4);
    }
  }

  Color _getBorder(BuildContext context) {
    switch (lesson.status) {
      case LessonStatus.cancelled:
        return Theme.of(context).colorScheme.error;
      case LessonStatus.hold:
        return Theme.of(context).colorScheme.outlineVariant;
      default:
        return Theme.of(context).colorScheme.outline;
    }
  }

  @override
  Widget build(BuildContext context) {
    Subject subject = lesson.subject;

    return Container(
      decoration: BoxDecoration(
        borderRadius: _getBorderRadius(),
        color: Theme.of(context).colorScheme.surfaceContainer,
        border: Border.all(color: _getBorder(context)),
      ),
      child: ListTile(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => LessonDetailsDialog(lesson: lesson),
          );
        },
        title: Text(
          subject.name.length > 17 ? subject.local_id : subject.name,
          //TODO read text for cancelled lessons
          style:
              Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold) ??
              TextStyle(fontWeight: FontWeight.bold),
        ),
        //TODO show time (like 1. und 2. Stunde) as trailing like beste.schule does
        subtitle: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...lesson.rooms.map((room) => FieldChip(child: Text(room.name))),

              chipPadding,

              ...lesson.teachers.map(
                (teacher) => FieldChipWithTooltip(
                  chip: FieldChip(child: Text(teacher.shortName)),
                  tooltip: "${teacher.forename} ${teacher.name}",
                ),
              ),

              chipPadding,

              if (!lesson.group.isMeta) ...[
                FieldChipWithTooltip(
                  chip: FieldChip(child: Text(lesson.group.shortName)),
                  tooltip: lesson.group.name,
                ),
                chipPadding,
              ],

              if (lesson.notes.isNotEmpty) ...[
                FieldChipWithTooltip(
                  chip: FieldChip(child: Icon(Icons.chat_outlined)),
                  tooltip: "This lesson has ${lesson.notes.length} notes.",
                  /* WITH COUNT, MAYBE SETTING
                      Badge.count(
                        count: lesson.notes.length,
                        child: Icon(Icons.chat_rounded),
                      ),*/
                ),
                chipPadding,
              ],

              if (lesson.status == LessonStatus.planned)
                FieldChipWithTooltip(
                  chip: FieldChip(child: Icon(Icons.new_releases_outlined)),
                  tooltip: "This Lesson was changed.",
                ),
            ],
          ),
        ),
      ),
    );
  }
}
