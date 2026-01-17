// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'note_type.g.dart';

@JsonSerializable()
class NoteType {
  const NoteType({
    required this.id,
    required this.color,
    required this.name,
    required this.notableType,
    required this.defaultValue,
    required this.defaultFor,
  });
  
  factory NoteType.fromJson(Map<String, Object?> json) => _$NoteTypeFromJson(json);
  
  final int id;
  final String? color;
  final String name;
  @JsonKey(name: 'notable_type')
  final String notableType;

  /// The name has been replaced because it contains a keyword. Original name: `default`.
  @JsonKey(name: 'default')
  final int defaultValue;
  @JsonKey(name: 'default_for')
  final String defaultFor;

  Map<String, Object?> toJson() => _$NoteTypeToJson(this);
}
