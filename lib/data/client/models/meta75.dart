// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta75.g.dart';

@JsonSerializable()
class Meta75 {
  const Meta75({
    required this.version,
  });
  
  factory Meta75.fromJson(Map<String, Object?> json) => _$Meta75FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta75ToJson(this);
}
