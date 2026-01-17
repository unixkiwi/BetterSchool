// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta56.g.dart';

@JsonSerializable()
class Meta56 {
  const Meta56({
    required this.version,
  });
  
  factory Meta56.fromJson(Map<String, Object?> json) => _$Meta56FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta56ToJson(this);
}
