// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta116.g.dart';

@JsonSerializable()
class Meta116 {
  const Meta116({
    required this.version,
  });
  
  factory Meta116.fromJson(Map<String, Object?> json) => _$Meta116FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta116ToJson(this);
}
