// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'group.dart';
import 'room.dart';
import 'subject.dart';
import 'substitution_plan_day.dart';
import 'teacher.dart';

part 'substitution_plan_lesson.g.dart';

@JsonSerializable()
class SubstitutionPlanLesson {
  const SubstitutionPlanLesson({
    required this.id,
    required this.nr,
    required this.status,
    required this.notes,
    this.day,
    this.subject,
    this.group,
    this.teachers,
    this.rooms,
  });
  
  factory SubstitutionPlanLesson.fromJson(Map<String, Object?> json) => _$SubstitutionPlanLessonFromJson(json);
  
  final int id;
  final String nr;
  final String status;
  final List<dynamic>? notes;
  final SubstitutionPlanDay? day;
  final Subject? subject;
  final Group? group;
  final List<Teacher>? teachers;
  final List<Room>? rooms;

  Map<String, Object?> toJson() => _$SubstitutionPlanLessonToJson(this);
}
