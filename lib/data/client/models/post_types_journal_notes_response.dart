// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_note_type.dart';

part 'post_types_journal_notes_response.g.dart';

@JsonSerializable()
class PostTypesJournalNotesResponse {
  const PostTypesJournalNotesResponse({
    required this.data,
  });
  
  factory PostTypesJournalNotesResponse.fromJson(Map<String, Object?> json) => _$PostTypesJournalNotesResponseFromJson(json);
  
  final JournalNoteType data;

  Map<String, Object?> toJson() => _$PostTypesJournalNotesResponseToJson(this);
}
