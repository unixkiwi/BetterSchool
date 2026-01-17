// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'tag.g.dart';

@JsonSerializable()
class Tag {
  const Tag({
    required this.id,
    required this.localId,
    required this.name,
    required this.hideValue,
    required this.forValue,
    required this.taggable,
  });
  
  factory Tag.fromJson(Map<String, Object?> json) => _$TagFromJson(json);
  
  final int id;
  @JsonKey(name: 'local_id')
  final String localId;
  final String name;

  /// The name has been replaced because it contains a keyword. Original name: `hide`.
  @JsonKey(name: 'hide')
  final int hideValue;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final String forValue;
  final String taggable;

  Map<String, Object?> toJson() => _$TagToJson(this);
}
