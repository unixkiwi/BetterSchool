// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta8.g.dart';

@JsonSerializable()
class Meta8 {
  const Meta8({
    required this.version,
  });
  
  factory Meta8.fromJson(Map<String, Object?> json) => _$Meta8FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta8ToJson(this);
}
