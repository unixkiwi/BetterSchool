// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'update_note_request_for_enum.dart';

part 'update_note_request.g.dart';

@JsonSerializable()
class UpdateNoteRequest {
  const UpdateNoteRequest({
    this.title,
    this.description,
    this.forEnum,
    this.noteTypeId,
    this.recordedAt,
  });
  
  factory UpdateNoteRequest.fromJson(Map<String, Object?> json) => _$UpdateNoteRequestFromJson(json);
  
  final String? title;
  final String? description;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final UpdateNoteRequestForEnum? forEnum;
  @JsonKey(name: 'note_type_id')
  final int? noteTypeId;
  @JsonKey(name: 'recorded_at')
  final DateTime? recordedAt;

  Map<String, Object?> toJson() => _$UpdateNoteRequestToJson(this);
}
