// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta139.g.dart';

@JsonSerializable()
class Meta139 {
  const Meta139({
    required this.version,
  });
  
  factory Meta139.fromJson(Map<String, Object?> json) => _$Meta139FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta139ToJson(this);
}
