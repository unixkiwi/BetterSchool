// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_note.dart';
import 'meta94.dart';

part 'post_journal_weeks_nr_notes_response.g.dart';

@JsonSerializable()
class PostJournalWeeksNrNotesResponse {
  const PostJournalWeeksNrNotesResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostJournalWeeksNrNotesResponse.fromJson(Map<String, Object?> json) => _$PostJournalWeeksNrNotesResponseFromJson(json);
  
  final JournalNote data;
  final Meta94 meta;

  Map<String, Object?> toJson() => _$PostJournalWeeksNrNotesResponseToJson(this);
}
