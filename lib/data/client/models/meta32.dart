// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta32.g.dart';

@JsonSerializable()
class Meta32 {
  const Meta32({
    required this.version,
  });
  
  factory Meta32.fromJson(Map<String, Object?> json) => _$Meta32FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta32ToJson(this);
}
