// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta64.g.dart';

@JsonSerializable()
class Meta64 {
  const Meta64({
    required this.version,
  });
  
  factory Meta64.fromJson(Map<String, Object?> json) => _$Meta64FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta64ToJson(this);
}
