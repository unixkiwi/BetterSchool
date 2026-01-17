// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta76.g.dart';

@JsonSerializable()
class Meta76 {
  const Meta76({
    required this.version,
  });
  
  factory Meta76.fromJson(Map<String, Object?> json) => _$Meta76FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta76ToJson(this);
}
