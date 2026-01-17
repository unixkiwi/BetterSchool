// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta61.g.dart';

@JsonSerializable()
class Meta61 {
  const Meta61({
    required this.version,
  });
  
  factory Meta61.fromJson(Map<String, Object?> json) => _$Meta61FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta61ToJson(this);
}
