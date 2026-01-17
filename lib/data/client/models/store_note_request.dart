// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_note_request_for_enum.dart';
import 'store_note_request_notable_type.dart';

part 'store_note_request.g.dart';

@JsonSerializable()
class StoreNoteRequest {
  const StoreNoteRequest({
    required this.title,
    required this.description,
    required this.forEnum,
    required this.notableType,
    required this.notableId,
    required this.noteTypeId,
    required this.recordedAt,
  });
  
  factory StoreNoteRequest.fromJson(Map<String, Object?> json) => _$StoreNoteRequestFromJson(json);
  
  final String title;
  final String description;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final StoreNoteRequestForEnum forEnum;
  @JsonKey(name: 'notable_type')
  final StoreNoteRequestNotableType notableType;
  @JsonKey(name: 'notable_id')
  final String notableId;
  @JsonKey(name: 'note_type_id')
  final int noteTypeId;
  @JsonKey(name: 'recorded_at')
  final DateTime recordedAt;

  Map<String, Object?> toJson() => _$StoreNoteRequestToJson(this);
}
