// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta83.g.dart';

@JsonSerializable()
class Meta83 {
  const Meta83({
    required this.version,
  });
  
  factory Meta83.fromJson(Map<String, Object?> json) => _$Meta83FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta83ToJson(this);
}
