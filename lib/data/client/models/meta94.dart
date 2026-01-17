// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta94.g.dart';

@JsonSerializable()
class Meta94 {
  const Meta94({
    required this.version,
  });
  
  factory Meta94.fromJson(Map<String, Object?> json) => _$Meta94FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta94ToJson(this);
}
