// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta108.g.dart';

@JsonSerializable()
class Meta108 {
  const Meta108({
    required this.version,
  });
  
  factory Meta108.fromJson(Map<String, Object?> json) => _$Meta108FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta108ToJson(this);
}
