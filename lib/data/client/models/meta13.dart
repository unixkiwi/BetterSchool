// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta13.g.dart';

@JsonSerializable()
class Meta13 {
  const Meta13({
    required this.version,
  });
  
  factory Meta13.fromJson(Map<String, Object?> json) => _$Meta13FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta13ToJson(this);
}
