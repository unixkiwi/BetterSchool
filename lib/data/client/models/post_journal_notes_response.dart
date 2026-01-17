// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'journal_note.dart';
import 'meta98.dart';

part 'post_journal_notes_response.g.dart';

@JsonSerializable()
class PostJournalNotesResponse {
  const PostJournalNotesResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostJournalNotesResponse.fromJson(Map<String, Object?> json) => _$PostJournalNotesResponseFromJson(json);
  
  final JournalNote data;
  final Meta98 meta;

  Map<String, Object?> toJson() => _$PostJournalNotesResponseToJson(this);
}
