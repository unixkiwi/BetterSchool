// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta37.g.dart';

@JsonSerializable()
class Meta37 {
  const Meta37({
    required this.version,
  });
  
  factory Meta37.fromJson(Map<String, Object?> json) => _$Meta37FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta37ToJson(this);
}
