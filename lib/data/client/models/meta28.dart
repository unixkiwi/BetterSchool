// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta28.g.dart';

@JsonSerializable()
class Meta28 {
  const Meta28({
    required this.version,
  });
  
  factory Meta28.fromJson(Map<String, Object?> json) => _$Meta28FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta28ToJson(this);
}
