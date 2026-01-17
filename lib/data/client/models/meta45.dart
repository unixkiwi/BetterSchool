// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta45.g.dart';

@JsonSerializable()
class Meta45 {
  const Meta45({
    required this.version,
  });
  
  factory Meta45.fromJson(Map<String, Object?> json) => _$Meta45FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta45ToJson(this);
}
