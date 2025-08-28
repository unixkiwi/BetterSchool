import 'package:betterschool/domain/models/lesson.dart';
import 'package:betterschool/domain/models/subject.dart';
import 'package:betterschool/ui/core/widgets/field_chip.dart';
import 'package:flutter/material.dart';

class TimetableLessonTile extends StatelessWidget {
  final Lesson lesson;

  const TimetableLessonTile({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    Subject subject = lesson.subject;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.surfaceContainerHigh,
        ),
        child: ListTile(
          // onTap: () {
          // showLessonTileBottomSheet(context, lesson);
          // },
          title: Text(
            subject.name.length > 17 ? subject.local_id : subject.name,
            style:
                Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ) ??
                TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: lesson.status == LessonStatus.planned
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    //TODO add bottomsheet for details
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
          subtitle: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...lesson.rooms.map(
                  (room) => FieldChip(label: room.name),
                ),

                Padding(padding: EdgeInsets.only(right: 8)),

                ...lesson.teachers.map(
                  (teacher) => FieldChipWithTooltip(
                    chip: FieldChip(label: teacher.shortName),
                    tooltip: "${teacher.forename} ${teacher.name}",
                  ),
                ),

                Padding(padding: EdgeInsets.only(right: 8)),

                ?lesson.group.isMeta ? null : FieldChipWithTooltip(chip: FieldChip(label: lesson.group.shortName), tooltip: lesson.group.name),
              ],
            ),
          ),
          style: Theme.of(context).listTileTheme.style,
        ),
      ),
    );
  }
}
