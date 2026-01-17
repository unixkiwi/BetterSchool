// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta120.g.dart';

@JsonSerializable()
class Meta120 {
  const Meta120({
    required this.version,
  });
  
  factory Meta120.fromJson(Map<String, Object?> json) => _$Meta120FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta120ToJson(this);
}
