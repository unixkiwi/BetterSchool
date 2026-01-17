// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta24.g.dart';

@JsonSerializable()
class Meta24 {
  const Meta24({
    required this.version,
  });
  
  factory Meta24.fromJson(Map<String, Object?> json) => _$Meta24FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta24ToJson(this);
}
