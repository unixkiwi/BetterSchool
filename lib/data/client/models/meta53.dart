// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta53.g.dart';

@JsonSerializable()
class Meta53 {
  const Meta53({
    required this.version,
  });
  
  factory Meta53.fromJson(Map<String, Object?> json) => _$Meta53FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta53ToJson(this);
}
