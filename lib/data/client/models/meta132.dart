// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta132.g.dart';

@JsonSerializable()
class Meta132 {
  const Meta132({
    required this.version,
  });
  
  factory Meta132.fromJson(Map<String, Object?> json) => _$Meta132FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta132ToJson(this);
}
