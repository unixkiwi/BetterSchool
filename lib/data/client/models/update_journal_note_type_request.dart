// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'update_journal_note_type_request_default_for.dart';

part 'update_journal_note_type_request.g.dart';

@JsonSerializable()
class UpdateJournalNoteTypeRequest {
  const UpdateJournalNoteTypeRequest({
    required this.name,
    required this.defaultValue,
    required this.defaultFor,
    this.color,
  });
  
  factory UpdateJournalNoteTypeRequest.fromJson(Map<String, Object?> json) => _$UpdateJournalNoteTypeRequestFromJson(json);
  
  final String name;
  final String? color;

  /// The name has been replaced because it contains a keyword. Original name: `default`.
  @JsonKey(name: 'default')
  final bool defaultValue;
  @JsonKey(name: 'default_for')
  final UpdateJournalNoteTypeRequestDefaultFor defaultFor;

  Map<String, Object?> toJson() => _$UpdateJournalNoteTypeRequestToJson(this);
}
