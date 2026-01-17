// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta11.g.dart';

@JsonSerializable()
class Meta11 {
  const Meta11({
    required this.version,
  });
  
  factory Meta11.fromJson(Map<String, Object?> json) => _$Meta11FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta11ToJson(this);
}
