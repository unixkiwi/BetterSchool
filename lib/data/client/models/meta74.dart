// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta74.g.dart';

@JsonSerializable()
class Meta74 {
  const Meta74({
    required this.version,
  });
  
  factory Meta74.fromJson(Map<String, Object?> json) => _$Meta74FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta74ToJson(this);
}
