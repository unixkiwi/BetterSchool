import 'package:betterschool/domain/models/room.dart';
import 'package:betterschool/domain/models/subject.dart';
import 'package:betterschool/domain/models/teacher.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: "status")
enum LessonStatus {
  @JsonValue("initial")
  initial,
  @JsonValue("planned")
  planned,
  @JsonValue("hold")
  hold,
  @JsonValue("canceled")
  cancelled,
}

class Lesson {
  final int id;
  final int nr;
  final LessonStatus status;
  final Subject subject;
  final List<Room> rooms;
  final List<Teacher> teachers;

  Lesson({
    required this.id,
    required this.nr,
    required this.status,
    required this.subject,
    required this.rooms,
    required this.teachers,
  });
}
