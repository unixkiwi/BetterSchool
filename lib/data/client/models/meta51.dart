// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta51.g.dart';

@JsonSerializable()
class Meta51 {
  const Meta51({
    required this.version,
  });
  
  factory Meta51.fromJson(Map<String, Object?> json) => _$Meta51FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta51ToJson(this);
}
