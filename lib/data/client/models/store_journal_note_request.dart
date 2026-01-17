// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_journal_note_request_for_enum.dart';

part 'store_journal_note_request.g.dart';

@JsonSerializable()
class StoreJournalNoteRequest {
  const StoreJournalNoteRequest({
    required this.journalNotableId,
    required this.journalNotableType,
    required this.typeId,
    required this.forEnum,
    required this.description,
  });
  
  factory StoreJournalNoteRequest.fromJson(Map<String, Object?> json) => _$StoreJournalNoteRequestFromJson(json);
  
  @JsonKey(name: 'journal_notable_id')
  final String journalNotableId;
  @JsonKey(name: 'journal_notable_type')
  final String journalNotableType;
  @JsonKey(name: 'type_id')
  final int typeId;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final StoreJournalNoteRequestForEnum forEnum;
  final String description;

  Map<String, Object?> toJson() => _$StoreJournalNoteRequestToJson(this);
}
