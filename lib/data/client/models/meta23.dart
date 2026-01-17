// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta23.g.dart';

@JsonSerializable()
class Meta23 {
  const Meta23({
    required this.version,
  });
  
  factory Meta23.fromJson(Map<String, Object?> json) => _$Meta23FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta23ToJson(this);
}
