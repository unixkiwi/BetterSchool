// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'announcement_type.dart';
import 'group.dart';
import 'guardian.dart';
import 'student.dart';
import 'teacher.dart';

part 'announcement.g.dart';

@JsonSerializable()
class Announcement {
  const Announcement({
    required this.id,
    required this.title,
    required this.message,
    required this.from,
    required this.to,
    required this.forValue,
    required this.needConfirmationFromStudent,
    required this.needConfirmationFromGuardian,
    required this.singleGroup,
    this.studentsCount,
    this.guardiansCount,
    this.allStudentsCount,
    this.allGuardiansCount,
    this.type,
    this.groups,
    this.students,
    this.guardians,
    this.allStudents,
    this.allGuardians,
    this.teacher,
  });
  
  factory Announcement.fromJson(Map<String, Object?> json) => _$AnnouncementFromJson(json);
  
  final int id;
  final String title;
  final String? message;
  final String from;
  final String to;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final String forValue;
  @JsonKey(name: 'need_confirmation_from_student')
  final int needConfirmationFromStudent;
  @JsonKey(name: 'need_confirmation_from_guardian')
  final int needConfirmationFromGuardian;
  @JsonKey(name: 'students_count')
  final String? studentsCount;
  @JsonKey(name: 'guardians_count')
  final String? guardiansCount;
  @JsonKey(name: 'all_students_count')
  final String? allStudentsCount;
  @JsonKey(name: 'all_guardians_count')
  final String? allGuardiansCount;
  @JsonKey(name: 'single_group')
  final bool singleGroup;
  final AnnouncementType? type;
  final List<Group>? groups;

  /// Students and Guardians with `Announcementable` pivot, includes read status
  final List<Student>? students;
  final List<Guardian>? guardians;
  @JsonKey(name: 'all_students')
  final List<Student>? allStudents;
  @JsonKey(name: 'all_guardians')
  final List<Guardian>? allGuardians;
  final Teacher? teacher;

  Map<String, Object?> toJson() => _$AnnouncementToJson(this);
}
