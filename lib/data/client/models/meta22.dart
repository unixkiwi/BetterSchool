// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta22.g.dart';

@JsonSerializable()
class Meta22 {
  const Meta22({
    required this.version,
  });
  
  factory Meta22.fromJson(Map<String, Object?> json) => _$Meta22FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta22ToJson(this);
}
