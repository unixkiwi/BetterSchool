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

  /**
   * Filters notes which are about the lessons content
   */
  List<Note> getLessonNotes() {
    return lessons
        .map((lesson) => lesson.notes.where((note) => note.type != NoteType.LESSON_CONTENT))
        .expand((notes) => notes)
        .toList();
  }
}
