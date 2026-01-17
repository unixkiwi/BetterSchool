// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta152.g.dart';

@JsonSerializable()
class Meta152 {
  const Meta152({
    required this.version,
  });
  
  factory Meta152.fromJson(Map<String, Object?> json) => _$Meta152FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta152ToJson(this);
}
