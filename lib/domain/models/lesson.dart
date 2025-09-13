import 'package:betterschool/domain/models/group.dart';
import 'package:betterschool/domain/models/note.dart';
import 'package:betterschool/domain/models/room.dart';
import 'package:betterschool/domain/models/subject.dart';
import 'package:betterschool/domain/models/teacher.dart';
import 'package:equatable/equatable.dart';
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

class Lesson extends Equatable {
  final int id;
  final int nr;
  final LessonStatus status;
  final Subject subject;
  final List<Room> rooms;
  final List<Teacher> teachers;
  final Group group;
  final List<Note> notes;
  final List<Lesson> subLessons;

  const Lesson({
    required this.id,
    required this.nr,
    required this.status,
    required this.subject,
    required this.rooms,
    required this.teachers,
    required this.group,
    required this.notes,
    this.subLessons = const [],
  });

  @override
  List<Object?> get props => [
    id,
    nr,
    status,
    subject,
    rooms,
    teachers,
    group,
    notes,
    subLessons,
  ];

  Lesson copyWith({
    int? id,
    int? nr,
    LessonStatus? status,
    Subject? subject,
    List<Room>? rooms,
    List<Teacher>? teachers,
    Group? group,
    List<Note>? notes,
    List<Lesson>? subLessons,
  }) {
    return Lesson(
      id: id ?? this.id,
      nr: nr ?? this.nr,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      rooms: rooms ?? this.rooms,
      teachers: teachers ?? this.teachers,
      group: group ?? this.group,
      notes: notes ?? this.notes,
      subLessons: subLessons ?? this.subLessons,
    );
  }
}
