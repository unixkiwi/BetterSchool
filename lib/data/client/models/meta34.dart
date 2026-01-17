// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta34.g.dart';

@JsonSerializable()
class Meta34 {
  const Meta34({
    required this.version,
  });
  
  factory Meta34.fromJson(Map<String, Object?> json) => _$Meta34FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta34ToJson(this);
}
