// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence.dart';
import 'journal_lesson.dart';
import 'journal_note.dart';
import 'student.dart';
import 'teacher.dart';

part 'journal_lesson_student.g.dart';

@JsonSerializable()
class JournalLessonStudent {
  const JournalLessonStudent({
    required this.id,
    required this.present,
    required this.tooEarly,
    required this.tooLate,
    required this.missingHomework,
    required this.missingEquipment,
    this.student,
    this.ids,
    this.absence,
    this.teacher,
    this.lesson,
    this.journalLessonIds,
    this.notes,
  });
  
  factory JournalLessonStudent.fromJson(Map<String, Object?> json) => _$JournalLessonStudentFromJson(json);
  
  final String id;
  final Student? student;
  final String? ids;
  final int present;
  @JsonKey(name: 'too_early')
  final int? tooEarly;
  @JsonKey(name: 'too_late')
  final int? tooLate;
  @JsonKey(name: 'missing_homework')
  final int? missingHomework;
  @JsonKey(name: 'missing_equipment')
  final int? missingEquipment;
  final Absence? absence;
  final Teacher? teacher;
  final JournalLesson? lesson;
  @JsonKey(name: 'journal_lesson_ids')
  final String? journalLessonIds;
  final List<JournalNote>? notes;

  Map<String, Object?> toJson() => _$JournalLessonStudentToJson(this);
}
