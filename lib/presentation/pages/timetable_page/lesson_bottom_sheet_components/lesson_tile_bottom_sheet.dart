import 'package:flutter/material.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/presentation/pages/timetable_page/lesson_bottom_sheet_components/bottom_sheet_lesson_notes.dart';

Future<dynamic> showLessonTileBottomSheet(BuildContext context, Lesson lesson) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(32),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // fit to content
              children: [
                Center(
                  child: Container(
                    height: 4,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  lesson.subject.name,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ) ??
                      TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Text(
                  "Rooms:",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Wrap(
                  spacing: 8,
                  children: lesson.rooms
                      .map(
                        (room) => Chip(
                          padding: EdgeInsets.all(2),
                          label: Text(room),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 16),
                Text(
                  "Teachers:",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Wrap(
                  spacing: 8,
                  children: lesson.teachers
                      .map(
                        (teacher) => Chip(
                          padding: EdgeInsets.all(2),
                          label: Text(
                            "${teacher.first} ${teacher.last}",
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 16),
                Text(
                  "Notes:",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                LessonBottomSheetNotesSection(lesson: lesson),
              ],
            ),
          ),
        ),
      );
    },
  );
}
