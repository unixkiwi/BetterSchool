// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta9.g.dart';

@JsonSerializable()
class Meta9 {
  const Meta9({
    required this.version,
  });
  
  factory Meta9.fromJson(Map<String, Object?> json) => _$Meta9FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta9ToJson(this);
}
