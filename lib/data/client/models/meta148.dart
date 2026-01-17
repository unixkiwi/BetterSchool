// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta148.g.dart';

@JsonSerializable()
class Meta148 {
  const Meta148({
    required this.version,
  });
  
  factory Meta148.fromJson(Map<String, Object?> json) => _$Meta148FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta148ToJson(this);
}
