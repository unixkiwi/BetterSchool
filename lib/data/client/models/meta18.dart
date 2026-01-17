// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta18.g.dart';

@JsonSerializable()
class Meta18 {
  const Meta18({
    required this.version,
  });
  
  factory Meta18.fromJson(Map<String, Object?> json) => _$Meta18FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta18ToJson(this);
}
