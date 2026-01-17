// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta151.g.dart';

@JsonSerializable()
class Meta151 {
  const Meta151({
    required this.version,
  });
  
  factory Meta151.fromJson(Map<String, Object?> json) => _$Meta151FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta151ToJson(this);
}
