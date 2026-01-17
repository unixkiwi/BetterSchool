// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta86.g.dart';

@JsonSerializable()
class Meta86 {
  const Meta86({
    required this.version,
  });
  
  factory Meta86.fromJson(Map<String, Object?> json) => _$Meta86FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta86ToJson(this);
}
