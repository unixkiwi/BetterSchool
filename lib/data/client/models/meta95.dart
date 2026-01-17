// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta95.g.dart';

@JsonSerializable()
class Meta95 {
  const Meta95({
    required this.version,
  });
  
  factory Meta95.fromJson(Map<String, Object?> json) => _$Meta95FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta95ToJson(this);
}
