// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_note_type.dart';

part 'get_types_journal_notes_id_response.g.dart';

@JsonSerializable()
class GetTypesJournalNotesIdResponse {
  const GetTypesJournalNotesIdResponse({
    required this.data,
  });
  
  factory GetTypesJournalNotesIdResponse.fromJson(Map<String, Object?> json) => _$GetTypesJournalNotesIdResponseFromJson(json);
  
  final JournalNoteType data;

  Map<String, Object?> toJson() => _$GetTypesJournalNotesIdResponseToJson(this);
}
