// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta136.g.dart';

@JsonSerializable()
class Meta136 {
  const Meta136({
    required this.version,
  });
  
  factory Meta136.fromJson(Map<String, Object?> json) => _$Meta136FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta136ToJson(this);
}
