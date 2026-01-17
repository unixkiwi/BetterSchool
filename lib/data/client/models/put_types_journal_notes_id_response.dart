// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_note_type.dart';

part 'put_types_journal_notes_id_response.g.dart';

@JsonSerializable()
class PutTypesJournalNotesIdResponse {
  const PutTypesJournalNotesIdResponse({
    required this.data,
  });
  
  factory PutTypesJournalNotesIdResponse.fromJson(Map<String, Object?> json) => _$PutTypesJournalNotesIdResponseFromJson(json);
  
  final JournalNoteType data;

  Map<String, Object?> toJson() => _$PutTypesJournalNotesIdResponseToJson(this);
}
