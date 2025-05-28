import 'package:school_app/domain/models/lesson_note.dart';

import './lesson.dart';
import './note.dart';

class SchoolDay {
  final DateTime date;
  final List<Lesson> lessons;
  final List<Note> notes;
  final bool isNull;

  const SchoolDay({
    required this.date,
    required this.lessons,
    required this.notes,
    required this.isNull,
  });

  factory SchoolDay.fromJson(Map json) {
    if (json["time_name"] == null) {
      return SchoolDay(
        date: DateTime.now(),
        lessons: [],
        notes: [],
        isNull: true,
      );
    } else {
      return SchoolDay(
        date: DateTime.parse(json['date']),
        lessons:
            (json['lessons'] as List).map((e) => Lesson.fromJson(e)).toList()
              ..sort((a, b) => a.nr.compareTo(b.nr)),
        notes: (json['notes'] as List).map((e) => Note.fromJson(e)).toList(),
        isNull: false,
      );
    }
  }

  List<LessonNote> getLessonNotes() {
    return lessons
        .map((lesson) => lesson.notes)
        .expand((notes) => notes)
        .toList();
  }
}
