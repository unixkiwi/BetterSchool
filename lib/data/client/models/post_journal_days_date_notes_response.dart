// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_note.dart';
import 'meta95.dart';

part 'post_journal_days_date_notes_response.g.dart';

@JsonSerializable()
class PostJournalDaysDateNotesResponse {
  const PostJournalDaysDateNotesResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostJournalDaysDateNotesResponse.fromJson(Map<String, Object?> json) => _$PostJournalDaysDateNotesResponseFromJson(json);
  
  final JournalNote data;
  final Meta95 meta;

  Map<String, Object?> toJson() => _$PostJournalDaysDateNotesResponseToJson(this);
}
