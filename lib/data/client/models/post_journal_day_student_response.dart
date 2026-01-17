// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_day_student.dart';
import 'meta81.dart';

part 'post_journal_day_student_response.g.dart';

@JsonSerializable()
class PostJournalDayStudentResponse {
  const PostJournalDayStudentResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostJournalDayStudentResponse.fromJson(Map<String, Object?> json) => _$PostJournalDayStudentResponseFromJson(json);
  
  final JournalDayStudent data;
  final Meta81 meta;

  Map<String, Object?> toJson() => _$PostJournalDayStudentResponseToJson(this);
}
