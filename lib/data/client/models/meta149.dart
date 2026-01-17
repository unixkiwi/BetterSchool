// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta149.g.dart';

@JsonSerializable()
class Meta149 {
  const Meta149({
    required this.version,
  });
  
  factory Meta149.fromJson(Map<String, Object?> json) => _$Meta149FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta149ToJson(this);
}
