// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta55.g.dart';

@JsonSerializable()
class Meta55 {
  const Meta55({
    required this.version,
  });
  
  factory Meta55.fromJson(Map<String, Object?> json) => _$Meta55FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta55ToJson(this);
}
