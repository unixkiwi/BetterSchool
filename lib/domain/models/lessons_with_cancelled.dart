import 'package:school_app/domain/models/lesson.dart';

class LessonWithCancelled extends Lesson {
  final Lesson cancelled;
  LessonWithCancelled({required this.cancelled, required super.nr, required super.status, required super.subject, required super.rooms, required super.teachers, required super.notes, required super.wasPresent});
}