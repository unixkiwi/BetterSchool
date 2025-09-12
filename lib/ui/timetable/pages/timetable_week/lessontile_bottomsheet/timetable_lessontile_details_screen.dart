import 'package:betterschool/domain/models/lesson.dart';
import 'package:betterschool/domain/models/note.dart';
import 'package:flutter/material.dart';

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
            SizedBox(height: 16),
            // Rooms
            _buildScrollableInfoSection(
              context,
              "Rooms",
              lesson.rooms.map((r) => r.name).toList(),
            ),
            SizedBox(height: 16),
            // Teacher
            _buildScrollableInfoSection(
              context,
              "Teachers",
              lesson.teachers.map((t) => "${t.forename} ${t.name}").toList(),
            ),
            SizedBox(height: 16),
            // Notes Title
            Text(
              "Notes:",
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            // Scrollable notes section
            Flexible(
              child: Container(
                width: double.infinity,
                constraints: BoxConstraints(minHeight: 60),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(8),
                ),
                clipBehavior: Clip.hardEdge,
                child: Scrollbar(
                  interactive: true,
                  radius: Radius.circular(6),
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(6),
                    itemCount: lesson.notes.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: index != lesson.notes.length - 1
                            ? const EdgeInsets.only(
                                bottom: 4,
                                left: 2,
                                right: 2,
                              )
                            : const EdgeInsets.symmetric(horizontal: 2),
                        child: _buildNoteTile(
                          context,
                          lesson.notes[index],
                          index == lesson.notes.length - 1,
                          index == 0,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNoteTile(
    BuildContext context,
    Note note,
    bool isLast,
    bool isFirst,
  ) {
    BorderRadius radius;

    if (isLast && isFirst) {
      radius = BorderRadius.all(Radius.circular(8));
    } else if (isLast) {
      radius = BorderRadius.only(
        topLeft: Radius.circular(3),
        topRight: Radius.circular(3),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      );
    } else if (isFirst) {
      radius = BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(3),
        bottomRight: Radius.circular(3),
      );
    } else {
      radius = BorderRadius.all(Radius.circular(3));
    }

    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: radius,
        color: Theme.of(context).colorScheme.surfaceContainerHigh,
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            note.type,
            style: Theme.of(context).textTheme.labelSmall,
            textAlign: TextAlign.start,
          ),
          Text(
            note.desc,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.start,
          ),
        ],
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
        SizedBox(height: 8),
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 8),
                child: Chip(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
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
