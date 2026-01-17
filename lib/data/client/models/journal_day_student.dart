// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence.dart';
import 'journal_day.dart';
import 'student.dart';
import 'teacher.dart';

part 'journal_day_student.g.dart';

@JsonSerializable()
class JournalDayStudent {
  const JournalDayStudent({
    required this.id,
    required this.present,
    required this.presentMixed,
    required this.tooEarly,
    required this.tooLate,
    this.dates,
    this.student,
    this.absence,
    this.absenceMixed,
    this.teacher,
    this.day,
  });
  
  factory JournalDayStudent.fromJson(Map<String, Object?> json) => _$JournalDayStudentFromJson(json);
  
  final String id;
  final int present;
  @JsonKey(name: 'present_mixed')
  final String presentMixed;
  @JsonKey(name: 'too_early')
  final int? tooEarly;
  @JsonKey(name: 'too_late')
  final int? tooLate;
  final String? dates;
  final Student? student;
  final Absence? absence;
  @JsonKey(name: 'absence_mixed')
  final String? absenceMixed;
  final Teacher? teacher;
  final JournalDay? day;

  Map<String, Object?> toJson() => _$JournalDayStudentToJson(this);
}
