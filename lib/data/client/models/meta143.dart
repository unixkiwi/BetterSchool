// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta143.g.dart';

@JsonSerializable()
class Meta143 {
  const Meta143({
    required this.version,
  });
  
  factory Meta143.fromJson(Map<String, Object?> json) => _$Meta143FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta143ToJson(this);
}
