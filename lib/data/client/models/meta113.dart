// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta113.g.dart';

@JsonSerializable()
class Meta113 {
  const Meta113({
    required this.version,
  });
  
  factory Meta113.fromJson(Map<String, Object?> json) => _$Meta113FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta113ToJson(this);
}
