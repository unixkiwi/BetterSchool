// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'note.dart';

part 'put_notes_note_response.g.dart';

@JsonSerializable()
class PutNotesNoteResponse {
  const PutNotesNoteResponse({
    required this.data,
  });
  
  factory PutNotesNoteResponse.fromJson(Map<String, Object?> json) => _$PutNotesNoteResponseFromJson(json);
  
  final Note data;

  Map<String, Object?> toJson() => _$PutNotesNoteResponseToJson(this);
}
