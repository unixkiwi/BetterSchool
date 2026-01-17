// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta90.g.dart';

@JsonSerializable()
class Meta90 {
  const Meta90({
    required this.version,
  });
  
  factory Meta90.fromJson(Map<String, Object?> json) => _$Meta90FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta90ToJson(this);
}
