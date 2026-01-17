// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_lesson_student.dart';
import 'meta90.dart';

part 'post_journal_lesson_student_response.g.dart';

@JsonSerializable()
class PostJournalLessonStudentResponse {
  const PostJournalLessonStudentResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostJournalLessonStudentResponse.fromJson(Map<String, Object?> json) => _$PostJournalLessonStudentResponseFromJson(json);
  
  final JournalLessonStudent data;
  final Meta90 meta;

  Map<String, Object?> toJson() => _$PostJournalLessonStudentResponseToJson(this);
}
