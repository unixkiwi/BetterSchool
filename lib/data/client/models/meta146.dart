// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta146.g.dart';

@JsonSerializable()
class Meta146 {
  const Meta146({
    required this.version,
  });
  
  factory Meta146.fromJson(Map<String, Object?> json) => _$Meta146FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta146ToJson(this);
}
