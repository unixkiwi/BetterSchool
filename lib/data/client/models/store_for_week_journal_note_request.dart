// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_for_week_journal_note_request_for_enum.dart';

part 'store_for_week_journal_note_request.g.dart';

@JsonSerializable()
class StoreForWeekJournalNoteRequest {
  const StoreForWeekJournalNoteRequest({
    required this.typeId,
    required this.description,
    required this.forEnum,
    required this.groupId,
  });
  
  factory StoreForWeekJournalNoteRequest.fromJson(Map<String, Object?> json) => _$StoreForWeekJournalNoteRequestFromJson(json);
  
  @JsonKey(name: 'type_id')
  final int typeId;
  final String description;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final StoreForWeekJournalNoteRequestForEnum forEnum;
  @JsonKey(name: 'group_id')
  final int groupId;

  Map<String, Object?> toJson() => _$StoreForWeekJournalNoteRequestToJson(this);
}
