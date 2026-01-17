// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta102.g.dart';

@JsonSerializable()
class Meta102 {
  const Meta102({
    required this.version,
  });
  
  factory Meta102.fromJson(Map<String, Object?> json) => _$Meta102FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta102ToJson(this);
}
