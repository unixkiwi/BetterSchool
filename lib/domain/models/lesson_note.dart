import 'note.dart';
import 'lesson.dart';

class LessonNote extends Note {
  final Lesson lesson;

  LessonNote({
    required super.desc,
    required super.type,
    required this.lesson,
  });

  factory LessonNote.fromJson(Map json, Lesson lesson) {
    NoteType jsonToNoteType(String value) {
      switch (value) {
        case "Sonstige Leistung":
          return NoteType.TEST;
        case "Klassenarbeit":
          return NoteType.CLASS_TEST;
        case "Stundeninhalt":
          return NoteType.LESSON_CONTENT;
        case "Substitution Plan":
          return NoteType.TIMETABLE;
        default:
          return NoteType.NONE;
      }
    }

    return LessonNote(
      desc: json['description'] ?? "",
      type: jsonToNoteType(json['type']['name']),
      lesson: lesson,
    );
  }
}
