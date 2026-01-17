// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'update_journal_note_request_for_enum.dart';

part 'update_journal_note_request.g.dart';

@JsonSerializable()
class UpdateJournalNoteRequest {
  const UpdateJournalNoteRequest({
    required this.typeId,
    required this.forEnum,
    required this.description,
  });
  
  factory UpdateJournalNoteRequest.fromJson(Map<String, Object?> json) => _$UpdateJournalNoteRequestFromJson(json);
  
  @JsonKey(name: 'type_id')
  final int typeId;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final UpdateJournalNoteRequestForEnum forEnum;
  final String description;

  Map<String, Object?> toJson() => _$UpdateJournalNoteRequestToJson(this);
}
