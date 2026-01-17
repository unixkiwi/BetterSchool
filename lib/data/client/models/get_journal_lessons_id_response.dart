// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_lesson.dart';
import 'meta89.dart';

part 'get_journal_lessons_id_response.g.dart';

@JsonSerializable()
class GetJournalLessonsIdResponse {
  const GetJournalLessonsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetJournalLessonsIdResponse.fromJson(Map<String, Object?> json) => _$GetJournalLessonsIdResponseFromJson(json);
  
  final JournalLesson data;
  final Meta89 meta;

  Map<String, Object?> toJson() => _$GetJournalLessonsIdResponseToJson(this);
}
