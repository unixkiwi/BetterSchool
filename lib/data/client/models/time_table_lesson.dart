// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'group.dart';
import 'room.dart';
import 'subject.dart';
import 'teacher.dart';

part 'time_table_lesson.g.dart';

@JsonSerializable()
class TimeTableLesson {
  const TimeTableLesson({
    required this.id,
    required this.weeks,
    required this.weekday,
    required this.nr,
    this.subject,
    this.group,
    this.teachers,
    this.rooms,
  });
  
  factory TimeTableLesson.fromJson(Map<String, Object?> json) => _$TimeTableLessonFromJson(json);
  
  final int id;
  final List<dynamic> weeks;
  final int weekday;
  final String nr;
  final Subject? subject;
  final Group? group;
  final List<Teacher>? teachers;
  final List<Room>? rooms;

  Map<String, Object?> toJson() => _$TimeTableLessonToJson(this);
}
