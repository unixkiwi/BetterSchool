// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta112.g.dart';

@JsonSerializable()
class Meta112 {
  const Meta112({
    required this.version,
  });
  
  factory Meta112.fromJson(Map<String, Object?> json) => _$Meta112FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta112ToJson(this);
}
