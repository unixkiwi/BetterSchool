// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta79.g.dart';

@JsonSerializable()
class Meta79 {
  const Meta79({
    required this.version,
  });
  
  factory Meta79.fromJson(Map<String, Object?> json) => _$Meta79FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta79ToJson(this);
}
