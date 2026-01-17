// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta128.g.dart';

@JsonSerializable()
class Meta128 {
  const Meta128({
    required this.version,
  });
  
  factory Meta128.fromJson(Map<String, Object?> json) => _$Meta128FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta128ToJson(this);
}
