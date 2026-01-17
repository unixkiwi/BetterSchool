// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta118.g.dart';

@JsonSerializable()
class Meta118 {
  const Meta118({
    required this.version,
  });
  
  factory Meta118.fromJson(Map<String, Object?> json) => _$Meta118FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta118ToJson(this);
}
