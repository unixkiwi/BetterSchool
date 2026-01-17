// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta25.g.dart';

@JsonSerializable()
class Meta25 {
  const Meta25({
    required this.version,
  });
  
  factory Meta25.fromJson(Map<String, Object?> json) => _$Meta25FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta25ToJson(this);
}
