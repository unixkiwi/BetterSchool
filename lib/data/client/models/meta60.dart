// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta60.g.dart';

@JsonSerializable()
class Meta60 {
  const Meta60({
    required this.version,
  });
  
  factory Meta60.fromJson(Map<String, Object?> json) => _$Meta60FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta60ToJson(this);
}
