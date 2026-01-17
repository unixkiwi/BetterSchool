// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta35.g.dart';

@JsonSerializable()
class Meta35 {
  const Meta35({
    required this.version,
  });
  
  factory Meta35.fromJson(Map<String, Object?> json) => _$Meta35FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta35ToJson(this);
}
