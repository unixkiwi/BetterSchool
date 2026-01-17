// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta109.g.dart';

@JsonSerializable()
class Meta109 {
  const Meta109({
    required this.version,
  });
  
  factory Meta109.fromJson(Map<String, Object?> json) => _$Meta109FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta109ToJson(this);
}
