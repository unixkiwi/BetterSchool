// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta101.g.dart';

@JsonSerializable()
class Meta101 {
  const Meta101({
    required this.version,
  });
  
  factory Meta101.fromJson(Map<String, Object?> json) => _$Meta101FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta101ToJson(this);
}
