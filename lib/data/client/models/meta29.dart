// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta29.g.dart';

@JsonSerializable()
class Meta29 {
  const Meta29({
    required this.version,
  });
  
  factory Meta29.fromJson(Map<String, Object?> json) => _$Meta29FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta29ToJson(this);
}
