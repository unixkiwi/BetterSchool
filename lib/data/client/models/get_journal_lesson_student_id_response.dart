// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_lesson_student.dart';
import 'meta93.dart';

part 'get_journal_lesson_student_id_response.g.dart';

@JsonSerializable()
class GetJournalLessonStudentIdResponse {
  const GetJournalLessonStudentIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetJournalLessonStudentIdResponse.fromJson(Map<String, Object?> json) => _$GetJournalLessonStudentIdResponseFromJson(json);
  
  final JournalLessonStudent data;
  final Meta93 meta;

  Map<String, Object?> toJson() => _$GetJournalLessonStudentIdResponseToJson(this);
}
