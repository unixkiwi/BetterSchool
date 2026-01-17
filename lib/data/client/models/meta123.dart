// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta123.g.dart';

@JsonSerializable()
class Meta123 {
  const Meta123({
    required this.version,
  });
  
  factory Meta123.fromJson(Map<String, Object?> json) => _$Meta123FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta123ToJson(this);
}
