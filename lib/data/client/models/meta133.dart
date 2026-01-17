// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta133.g.dart';

@JsonSerializable()
class Meta133 {
  const Meta133({
    required this.version,
  });
  
  factory Meta133.fromJson(Map<String, Object?> json) => _$Meta133FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta133ToJson(this);
}
