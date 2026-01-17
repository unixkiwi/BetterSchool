// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta14.g.dart';

@JsonSerializable()
class Meta14 {
  const Meta14({
    required this.version,
  });
  
  factory Meta14.fromJson(Map<String, Object?> json) => _$Meta14FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta14ToJson(this);
}
