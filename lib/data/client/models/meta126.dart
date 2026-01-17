// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta126.g.dart';

@JsonSerializable()
class Meta126 {
  const Meta126({
    required this.version,
  });
  
  factory Meta126.fromJson(Map<String, Object?> json) => _$Meta126FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta126ToJson(this);
}
