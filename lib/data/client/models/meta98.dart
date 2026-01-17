// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta98.g.dart';

@JsonSerializable()
class Meta98 {
  const Meta98({
    required this.version,
  });
  
  factory Meta98.fromJson(Map<String, Object?> json) => _$Meta98FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta98ToJson(this);
}
