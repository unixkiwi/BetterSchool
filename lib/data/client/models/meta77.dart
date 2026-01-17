// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta77.g.dart';

@JsonSerializable()
class Meta77 {
  const Meta77({
    required this.version,
  });
  
  factory Meta77.fromJson(Map<String, Object?> json) => _$Meta77FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta77ToJson(this);
}
