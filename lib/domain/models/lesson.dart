import './teacher.dart';
import './lesson_note.dart';
import './subject.dart';

class Lesson {
  final int nr;
  final LessonStatus status;
  final Subject subject;
  final List<String> rooms;
  final List<Teacher> teachers;
  final List<LessonNote> notes;
  final bool wasPresent;

  const Lesson({
    required this.nr,
    required this.status,
    required this.subject,
    required this.rooms,
    required this.teachers,
    required this.notes,
    required this.wasPresent,
  });

  factory Lesson.fromJson(Map json) {
    LessonStatus jsonToStatus(String status) {
      switch (status) {
        case "hold":
          return LessonStatus.HOLD;
        case "initial":
          return LessonStatus.INITIAL;
        case "canceled":
          return LessonStatus.CANCELLED;
        case "planned":
          return LessonStatus.PLANNED;
        default:
          return LessonStatus.INITIAL;
      }
    }

    // create temp lesson without notes, so i can use the lesson in the LessonNote
    final tempLesson = Lesson(
      nr: json['nr'],
      status: jsonToStatus(json['status']),
      subject: Subject.fromJson(json['subject']),
      rooms:
          (json['rooms'] as List)
              .map((e) => (e['local_id'] ?? "").toString())
              .toList(),
      teachers:
          (json['teachers'] as List).map((e) => Teacher.fromJson(e)).toList(),
      notes: const [],
      // if student count is greater than 0 -> student was present in the lesson
      wasPresent: (json['students_present_count'] ??= 0) > 0,
    );

    // create the notes list using the generated tempLesson
    final notes = (json['notes'] as List)
        .map((e) => LessonNote.fromJson(e, tempLesson))
        .toList();

    // return final lesson
    return Lesson(
      nr: tempLesson.nr,
      status: tempLesson.status,
      subject: tempLesson.subject,
      rooms: tempLesson.rooms,
      teachers: tempLesson.teachers,
      notes: notes,
      wasPresent: tempLesson.wasPresent,
    );
  }
}

enum LessonStatus { HOLD, INITIAL, PLANNED, CANCELLED }
