// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta92.g.dart';

@JsonSerializable()
class Meta92 {
  const Meta92({
    required this.version,
  });
  
  factory Meta92.fromJson(Map<String, Object?> json) => _$Meta92FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta92ToJson(this);
}
