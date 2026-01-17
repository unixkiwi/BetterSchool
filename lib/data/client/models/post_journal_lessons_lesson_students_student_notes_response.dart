// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_note.dart';
import 'meta97.dart';

part 'post_journal_lessons_lesson_students_student_notes_response.g.dart';

@JsonSerializable()
class PostJournalLessonsLessonStudentsStudentNotesResponse {
  const PostJournalLessonsLessonStudentsStudentNotesResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostJournalLessonsLessonStudentsStudentNotesResponse.fromJson(Map<String, Object?> json) => _$PostJournalLessonsLessonStudentsStudentNotesResponseFromJson(json);
  
  final JournalNote data;
  final Meta97 meta;

  Map<String, Object?> toJson() => _$PostJournalLessonsLessonStudentsStudentNotesResponseToJson(this);
}
