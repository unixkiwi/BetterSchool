// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta104.g.dart';

@JsonSerializable()
class Meta104 {
  const Meta104({
    required this.version,
  });
  
  factory Meta104.fromJson(Map<String, Object?> json) => _$Meta104FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta104ToJson(this);
}
