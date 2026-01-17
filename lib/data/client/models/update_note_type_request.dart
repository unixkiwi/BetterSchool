// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'update_note_type_request_default_for.dart';

part 'update_note_type_request.g.dart';

@JsonSerializable()
class UpdateNoteTypeRequest {
  const UpdateNoteTypeRequest({
    this.color,
    this.name,
    this.notableType,
    this.defaultValue,
    this.defaultFor,
  });
  
  factory UpdateNoteTypeRequest.fromJson(Map<String, Object?> json) => _$UpdateNoteTypeRequestFromJson(json);
  
  final String? color;
  final String? name;
  @JsonKey(name: 'notable_type')
  final String? notableType;

  /// The name has been replaced because it contains a keyword. Original name: `default`.
  @JsonKey(name: 'default')
  final bool? defaultValue;
  @JsonKey(name: 'default_for')
  final UpdateNoteTypeRequestDefaultFor? defaultFor;

  Map<String, Object?> toJson() => _$UpdateNoteTypeRequestToJson(this);
}
