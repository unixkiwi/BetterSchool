// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_lesson.dart';
import 'meta88.dart';

part 'put_journal_lessons_id_response.g.dart';

@JsonSerializable()
class PutJournalLessonsIdResponse {
  const PutJournalLessonsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutJournalLessonsIdResponse.fromJson(Map<String, Object?> json) => _$PutJournalLessonsIdResponseFromJson(json);
  
  final JournalLesson data;
  final Meta88 meta;

  Map<String, Object?> toJson() => _$PutJournalLessonsIdResponseToJson(this);
}
