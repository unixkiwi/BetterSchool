// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta110.g.dart';

@JsonSerializable()
class Meta110 {
  const Meta110({
    required this.version,
  });
  
  factory Meta110.fromJson(Map<String, Object?> json) => _$Meta110FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta110ToJson(this);
}
