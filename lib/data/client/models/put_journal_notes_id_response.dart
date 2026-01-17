// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_note.dart';
import 'meta100.dart';

part 'put_journal_notes_id_response.g.dart';

@JsonSerializable()
class PutJournalNotesIdResponse {
  const PutJournalNotesIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutJournalNotesIdResponse.fromJson(Map<String, Object?> json) => _$PutJournalNotesIdResponseFromJson(json);
  
  final JournalNote data;
  final Meta100 meta;

  Map<String, Object?> toJson() => _$PutJournalNotesIdResponseToJson(this);
}
