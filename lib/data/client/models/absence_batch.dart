// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence_batch.dart';
import 'absence_type.dart';
import 'absence_verification.dart';
import 'journal_lesson_student.dart';
import 'student.dart';
import 'subject.dart';
import 'teacher.dart';

part 'absence_batch.g.dart';

@JsonSerializable()
class AbsenceBatch {
  const AbsenceBatch({
    required this.id,
    required this.singleGroup,
    this.students,
    this.from,
    this.to,
    this.note,
    this.noteTeacher,
    this.noteGuardian,
    this.recordedAt,
    this.type,
    this.teacher,
    this.batch,
    this.batchId,
    this.student,
    this.subjects,
    this.verification,
    this.lessonStudents,
    this.lessonStudentsCount,
    this.lessons,
    this.lessonsCount,
  });
  
  factory AbsenceBatch.fromJson(Map<String, Object?> json) => _$AbsenceBatchFromJson(json);
  
  final int id;
  @JsonKey(name: 'single_group')
  final String singleGroup;
  final List<Student>? students;
  final String? from;
  final String? to;
  final String? note;

  /// deprecated, can be removed in the future
  @JsonKey(name: 'note_teacher')
  final String? noteTeacher;
  @JsonKey(name: 'note_guardian')
  final String? noteGuardian;
  @JsonKey(name: 'recorded_at')
  final String? recordedAt;
  final AbsenceType? type;
  final Teacher? teacher;
  final AbsenceBatch? batch;
  @JsonKey(name: 'batch_id')
  final int? batchId;
  final Student? student;
  final List<Subject>? subjects;
  final AbsenceVerification? verification;
  @JsonKey(name: 'lesson_students')
  final List<JournalLessonStudent>? lessonStudents;
  @JsonKey(name: 'lesson_students_count')
  final String? lessonStudentsCount;
  final List<JournalLessonStudent>? lessons;
  @JsonKey(name: 'lessons_count')
  final String? lessonsCount;

  Map<String, Object?> toJson() => _$AbsenceBatchToJson(this);
}
