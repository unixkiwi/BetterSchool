// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta85.g.dart';

@JsonSerializable()
class Meta85 {
  const Meta85({
    required this.version,
  });
  
  factory Meta85.fromJson(Map<String, Object?> json) => _$Meta85FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta85ToJson(this);
}
