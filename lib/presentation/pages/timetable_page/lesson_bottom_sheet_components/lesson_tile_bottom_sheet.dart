import 'package:flutter/material.dart';
import 'package:school_app/domain/models/lesson.dart';
import 'package:school_app/domain/models/note.dart';
import 'package:school_app/presentation/pages/timetable_page/lesson_bottom_sheet_components/bottom_sheet_lesson_notes.dart';

Future<dynamic> showLessonTileBottomSheet(BuildContext context, Lesson lesson) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) {
      return DraggableScrollableSheet(
        initialChildSize: 0.4,
        minChildSize: 0.2,
        maxChildSize: 0.75,
        expand: false,
        builder: (context, scrollController) {
          return Container(
            width: double.infinity, // Ensures full width
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  //TODO show cancelled lesson...
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Lesson name as title
                    Text(
                      lesson.subject.name,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ) ??
                          TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    // Rooms
                    Text(
                      "Rooms:",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Wrap(
                      spacing: 8,
                      children:
                          lesson.rooms
                              .map(
                                (room) => Chip(
                                  padding: EdgeInsets.all(2),
                                  label: Text(room),
                                ),
                              )
                              .toList(),
                    ),
                    const SizedBox(height: 16),
                    // Teachers
                    Text(
                      "Teachers:",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Wrap(
                      spacing: 8,
                      children:
                          lesson.teachers
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
                    // Notes
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
    },
  );
}
