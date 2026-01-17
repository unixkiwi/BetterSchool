// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta138.g.dart';

@JsonSerializable()
class Meta138 {
  const Meta138({
    required this.version,
  });
  
  factory Meta138.fromJson(Map<String, Object?> json) => _$Meta138FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta138ToJson(this);
}
