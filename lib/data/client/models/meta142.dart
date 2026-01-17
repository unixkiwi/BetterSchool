// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta142.g.dart';

@JsonSerializable()
class Meta142 {
  const Meta142({
    required this.version,
  });
  
  factory Meta142.fromJson(Map<String, Object?> json) => _$Meta142FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta142ToJson(this);
}
