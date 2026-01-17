// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_lesson.dart';
import 'meta86.dart';

part 'post_journal_lessons_response.g.dart';

@JsonSerializable()
class PostJournalLessonsResponse {
  const PostJournalLessonsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostJournalLessonsResponse.fromJson(Map<String, Object?> json) => _$PostJournalLessonsResponseFromJson(json);
  
  final JournalLesson data;
  final Meta86 meta;

  Map<String, Object?> toJson() => _$PostJournalLessonsResponseToJson(this);
}
