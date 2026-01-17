// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta162.g.dart';

@JsonSerializable()
class Meta162 {
  const Meta162({
    required this.version,
  });
  
  factory Meta162.fromJson(Map<String, Object?> json) => _$Meta162FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta162ToJson(this);
}
