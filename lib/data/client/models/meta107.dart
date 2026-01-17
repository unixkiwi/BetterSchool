// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta107.g.dart';

@JsonSerializable()
class Meta107 {
  const Meta107({
    required this.version,
  });
  
  factory Meta107.fromJson(Map<String, Object?> json) => _$Meta107FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta107ToJson(this);
}
