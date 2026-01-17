// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_lesson.dart';
import 'meta85.dart';

part 'post_journal_days_date_lessons_response.g.dart';

@JsonSerializable()
class PostJournalDaysDateLessonsResponse {
  const PostJournalDaysDateLessonsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostJournalDaysDateLessonsResponse.fromJson(Map<String, Object?> json) => _$PostJournalDaysDateLessonsResponseFromJson(json);
  
  final JournalLesson data;
  final Meta85 meta;

  Map<String, Object?> toJson() => _$PostJournalDaysDateLessonsResponseToJson(this);
}
