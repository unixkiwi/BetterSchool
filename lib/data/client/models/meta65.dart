// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta65.g.dart';

@JsonSerializable()
class Meta65 {
  const Meta65({
    required this.version,
  });
  
  factory Meta65.fromJson(Map<String, Object?> json) => _$Meta65FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta65ToJson(this);
}
