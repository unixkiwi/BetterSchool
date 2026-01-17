// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta69.g.dart';

@JsonSerializable()
class Meta69 {
  const Meta69({
    required this.version,
  });
  
  factory Meta69.fromJson(Map<String, Object?> json) => _$Meta69FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta69ToJson(this);
}
