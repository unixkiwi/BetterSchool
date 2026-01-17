// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta100.g.dart';

@JsonSerializable()
class Meta100 {
  const Meta100({
    required this.version,
  });
  
  factory Meta100.fromJson(Map<String, Object?> json) => _$Meta100FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta100ToJson(this);
}
