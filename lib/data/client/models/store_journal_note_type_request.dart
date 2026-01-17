// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_journal_note_type_request_default_for.dart';

part 'store_journal_note_type_request.g.dart';

@JsonSerializable()
class StoreJournalNoteTypeRequest {
  const StoreJournalNoteTypeRequest({
    required this.name,
    required this.defaultValue,
    required this.defaultFor,
    required this.journalNotableType,
    this.color,
  });
  
  factory StoreJournalNoteTypeRequest.fromJson(Map<String, Object?> json) => _$StoreJournalNoteTypeRequestFromJson(json);
  
  final String name;
  final String? color;

  /// The name has been replaced because it contains a keyword. Original name: `default`.
  @JsonKey(name: 'default')
  final bool defaultValue;
  @JsonKey(name: 'default_for')
  final StoreJournalNoteTypeRequestDefaultFor defaultFor;
  @JsonKey(name: 'journal_notable_type')
  final String journalNotableType;

  Map<String, Object?> toJson() => _$StoreJournalNoteTypeRequestToJson(this);
}
