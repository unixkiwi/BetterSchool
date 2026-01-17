// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta111.g.dart';

@JsonSerializable()
class Meta111 {
  const Meta111({
    required this.version,
  });
  
  factory Meta111.fromJson(Map<String, Object?> json) => _$Meta111FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta111ToJson(this);
}
