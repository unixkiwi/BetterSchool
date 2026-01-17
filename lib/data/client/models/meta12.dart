// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta12.g.dart';

@JsonSerializable()
class Meta12 {
  const Meta12({
    required this.version,
  });
  
  factory Meta12.fromJson(Map<String, Object?> json) => _$Meta12FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta12ToJson(this);
}
