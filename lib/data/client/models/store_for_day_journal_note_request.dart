// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_for_day_journal_note_request_for_enum.dart';

part 'store_for_day_journal_note_request.g.dart';

@JsonSerializable()
class StoreForDayJournalNoteRequest {
  const StoreForDayJournalNoteRequest({
    required this.typeId,
    required this.description,
    required this.forEnum,
    required this.groupId,
  });
  
  factory StoreForDayJournalNoteRequest.fromJson(Map<String, Object?> json) => _$StoreForDayJournalNoteRequestFromJson(json);
  
  @JsonKey(name: 'type_id')
  final int typeId;
  final String description;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final StoreForDayJournalNoteRequestForEnum forEnum;
  @JsonKey(name: 'group_id')
  final int groupId;

  Map<String, Object?> toJson() => _$StoreForDayJournalNoteRequestToJson(this);
}
