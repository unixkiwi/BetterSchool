// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta38.g.dart';

@JsonSerializable()
class Meta38 {
  const Meta38({
    required this.version,
  });
  
  factory Meta38.fromJson(Map<String, Object?> json) => _$Meta38FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta38ToJson(this);
}
