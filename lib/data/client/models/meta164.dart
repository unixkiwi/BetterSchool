// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'type.dart';

part 'meta164.g.dart';

@JsonSerializable()
class Meta164 {
  const Meta164({
    required this.version,
    required this.type,
  });
  
  factory Meta164.fromJson(Map<String, Object?> json) => _$Meta164FromJson(json);
  
  final String version;

  /// we do not use this at the moment
  final Type type;

  Map<String, Object?> toJson() => _$Meta164ToJson(this);
}
