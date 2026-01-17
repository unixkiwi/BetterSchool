// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta80.g.dart';

@JsonSerializable()
class Meta80 {
  const Meta80({
    required this.version,
  });
  
  factory Meta80.fromJson(Map<String, Object?> json) => _$Meta80FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta80ToJson(this);
}
