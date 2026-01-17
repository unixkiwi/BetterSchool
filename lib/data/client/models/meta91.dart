// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta91.g.dart';

@JsonSerializable()
class Meta91 {
  const Meta91({
    required this.version,
  });
  
  factory Meta91.fromJson(Map<String, Object?> json) => _$Meta91FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta91ToJson(this);
}
