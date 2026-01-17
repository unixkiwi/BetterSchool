// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta84.g.dart';

@JsonSerializable()
class Meta84 {
  const Meta84({
    required this.version,
  });
  
  factory Meta84.fromJson(Map<String, Object?> json) => _$Meta84FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta84ToJson(this);
}
