// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta17.g.dart';

@JsonSerializable()
class Meta17 {
  const Meta17({
    required this.version,
  });
  
  factory Meta17.fromJson(Map<String, Object?> json) => _$Meta17FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta17ToJson(this);
}
