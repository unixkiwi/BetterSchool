// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_note_type_request_default_for.dart';

part 'store_note_type_request.g.dart';

@JsonSerializable()
class StoreNoteTypeRequest {
  const StoreNoteTypeRequest({
    required this.notableType,
    required this.name,
    required this.defaultValue,
    required this.defaultFor,
    this.color,
  });
  
  factory StoreNoteTypeRequest.fromJson(Map<String, Object?> json) => _$StoreNoteTypeRequestFromJson(json);
  
  final String? color;
  @JsonKey(name: 'notable_type')
  final String notableType;
  final String name;

  /// The name has been replaced because it contains a keyword. Original name: `default`.
  @JsonKey(name: 'default')
  final bool defaultValue;
  @JsonKey(name: 'default_for')
  final StoreNoteTypeRequestDefaultFor defaultFor;

  Map<String, Object?> toJson() => _$StoreNoteTypeRequestToJson(this);
}
