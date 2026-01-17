// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta5.g.dart';

@JsonSerializable()
class Meta5 {
  const Meta5({
    required this.version,
  });
  
  factory Meta5.fromJson(Map<String, Object?> json) => _$Meta5FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta5ToJson(this);
}
