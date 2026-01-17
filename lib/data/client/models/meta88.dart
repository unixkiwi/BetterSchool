// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta88.g.dart';

@JsonSerializable()
class Meta88 {
  const Meta88({
    required this.version,
  });
  
  factory Meta88.fromJson(Map<String, Object?> json) => _$Meta88FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta88ToJson(this);
}
