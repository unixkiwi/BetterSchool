// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta40.g.dart';

@JsonSerializable()
class Meta40 {
  const Meta40({
    required this.version,
  });
  
  factory Meta40.fromJson(Map<String, Object?> json) => _$Meta40FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta40ToJson(this);
}
