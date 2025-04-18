import './note.dart';
import './teacher.dart';

class Lesson {
  final int nr;
  final LessonStatus status;
  final String name;
  final String shortName;
  final List<String> rooms;
  final List<Teacher> teachers;
  final List<Note> notes;
  final bool wasPresent;

  const Lesson({
    required this.nr,
    required this.status,
    required this.name,
    required this.shortName,
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

    return Lesson(
      nr: json['nr'],
      status: jsonToStatus(json['status']),
      name: json['subject']['name'] ?? "",
      shortName: json['subject']['local_id'] ?? "",
      rooms:
          (json['rooms'] as List)
              .map((e) => (e['local_id'] ?? "").toString())
              .toList(),
      teachers:
          (json['teachers'] as List).map((e) => Teacher.fromJson(e)).toList(),
      notes: (json['notes'] as List).map((e) => Note.fromJson(e)).toList(),
      // check if the count of present students is greater than 0 because then
      // the student was present
      wasPresent: (json['students_present_count'] ??= 0) > 0,
    );
  }
}

enum LessonStatus { HOLD, INITIAL, PLANNED, CANCELLED }
