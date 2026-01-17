// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_note.dart';
import 'meta99.dart';

part 'get_journal_notes_id_response.g.dart';

@JsonSerializable()
class GetJournalNotesIdResponse {
  const GetJournalNotesIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetJournalNotesIdResponse.fromJson(Map<String, Object?> json) => _$GetJournalNotesIdResponseFromJson(json);
  
  final JournalNote data;
  final Meta99 meta;

  Map<String, Object?> toJson() => _$GetJournalNotesIdResponseToJson(this);
}
