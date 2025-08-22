import 'package:betterschool/domain/models/subject.dart';
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

  Lesson({
    required this.id,
    required this.nr,
    required this.status,
    required this.subject,
  });
}
