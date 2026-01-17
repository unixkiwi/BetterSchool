// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta117.g.dart';

@JsonSerializable()
class Meta117 {
  const Meta117({
    required this.version,
  });
  
  factory Meta117.fromJson(Map<String, Object?> json) => _$Meta117FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta117ToJson(this);
}
