// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta44.g.dart';

@JsonSerializable()
class Meta44 {
  const Meta44({
    required this.version,
  });
  
  factory Meta44.fromJson(Map<String, Object?> json) => _$Meta44FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta44ToJson(this);
}
