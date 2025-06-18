import 'package:flutter/material.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/domain/models/note.dart';

class LessonBottomSheetNotesSection extends StatelessWidget {
  final Lesson lesson;

  const LessonBottomSheetNotesSection({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    if (lesson.notes.isEmpty) {
      return Chip(
        padding: EdgeInsets.all(2),
        label: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            "No notes for this lesson",
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      );
    } else {
      return Wrap(
        spacing: 6,
        children:
            lesson.notes
                .map(
                  (note) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Chip(
                      padding: EdgeInsets.all(2),
                      label: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              note.type.description,
                              style: Theme.of(
                                context,
                              ).textTheme.labelSmall?.copyWith(
                                color:
                                    Theme.of(
                                      context,
                                    ).colorScheme.onSurfaceVariant,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(note.desc),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
      );
    }
  }
}
