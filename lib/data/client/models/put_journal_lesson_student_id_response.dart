// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_lesson_student.dart';
import 'meta92.dart';

part 'put_journal_lesson_student_id_response.g.dart';

@JsonSerializable()
class PutJournalLessonStudentIdResponse {
  const PutJournalLessonStudentIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutJournalLessonStudentIdResponse.fromJson(Map<String, Object?> json) => _$PutJournalLessonStudentIdResponseFromJson(json);
  
  final JournalLessonStudent data;
  final Meta92 meta;

  Map<String, Object?> toJson() => _$PutJournalLessonStudentIdResponseToJson(this);
}
