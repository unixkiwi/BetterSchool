// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_note.dart';
import 'meta96.dart';

part 'post_journal_lessons_id_notes_response.g.dart';

@JsonSerializable()
class PostJournalLessonsIdNotesResponse {
  const PostJournalLessonsIdNotesResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostJournalLessonsIdNotesResponse.fromJson(Map<String, Object?> json) => _$PostJournalLessonsIdNotesResponseFromJson(json);
  
  final JournalNote data;
  final Meta96 meta;

  Map<String, Object?> toJson() => _$PostJournalLessonsIdNotesResponseToJson(this);
}
