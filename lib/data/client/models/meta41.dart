// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta41.g.dart';

@JsonSerializable()
class Meta41 {
  const Meta41({
    required this.version,
  });
  
  factory Meta41.fromJson(Map<String, Object?> json) => _$Meta41FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta41ToJson(this);
}
