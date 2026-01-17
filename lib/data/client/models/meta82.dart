// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta82.g.dart';

@JsonSerializable()
class Meta82 {
  const Meta82({
    required this.version,
  });
  
  factory Meta82.fromJson(Map<String, Object?> json) => _$Meta82FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta82ToJson(this);
}
