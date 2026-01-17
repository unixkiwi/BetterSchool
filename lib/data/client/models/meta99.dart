// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta99.g.dart';

@JsonSerializable()
class Meta99 {
  const Meta99({
    required this.version,
  });
  
  factory Meta99.fromJson(Map<String, Object?> json) => _$Meta99FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta99ToJson(this);
}
