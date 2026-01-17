// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta124.g.dart';

@JsonSerializable()
class Meta124 {
  const Meta124({
    required this.version,
  });
  
  factory Meta124.fromJson(Map<String, Object?> json) => _$Meta124FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta124ToJson(this);
}
