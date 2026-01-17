// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_note_type.dart';

part 'get_types_journal_notes_response.g.dart';

@JsonSerializable()
class GetTypesJournalNotesResponse {
  const GetTypesJournalNotesResponse({
    required this.data,
  });
  
  factory GetTypesJournalNotesResponse.fromJson(Map<String, Object?> json) => _$GetTypesJournalNotesResponseFromJson(json);
  
  final List<JournalNoteType> data;

  Map<String, Object?> toJson() => _$GetTypesJournalNotesResponseToJson(this);
}
