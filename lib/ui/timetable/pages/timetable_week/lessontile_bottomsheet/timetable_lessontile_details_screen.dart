import 'package:betterschool/domain/models/lesson.dart';
import 'package:betterschool/domain/models/note.dart';
import 'package:betterschool/ui/timetable/pages/timetable_week/timetable_lesson_tile.dart';
import 'package:flutter/material.dart';

part 'timetable_lessontile_details_notes.dart';
part 'timetable_lessontile_details_sublessons.dart';

class LessonDetailsDialog extends StatelessWidget {
  final Lesson lesson;

  const LessonDetailsDialog({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.8,
          maxWidth: MediaQuery.of(context).size.width * 0.9,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    lesson.subject.name,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close),
                  style: IconButton.styleFrom(
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.surfaceContainerHighest,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            // Rooms
            _buildScrollableInfoSection(
              context,
              "Rooms",
              lesson.rooms.map((r) => r.name).toList(),
            ),
            SizedBox(height: 8),
            // Teacher
            _buildScrollableInfoSection(
              context,
              "Teachers",
              lesson.teachers.map((t) => "${t.forename} ${t.name}").toList(),
            ),
            SizedBox(height: 8),
            // Subject
            _buildScrollableInfoSection(context, "Subject", [
              lesson.subject.name,
            ]),
            SizedBox(height: 8),
            // Notes Title
            Text(
              "Notes:",
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            // Scrollable notes section
            TimetableLessontileDetailsNotesSection(notes: lesson.notes),
            SizedBox(height: 8),
            if (lesson.subLessons.isNotEmpty) ...[
              // Sublessons tile
              Text(
                "Other Lessons:",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              // Scrollable sublessons section
              TimetableLessontileDetailsSublessonsSection(
                sublessons: lesson.subLessons,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildScrollableInfoSection(
    BuildContext context,
    String title,
    List<String> items,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title:",
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 4),
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 8),
                child: Chip(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  label: Text(items[index]),
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.primaryContainer,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
