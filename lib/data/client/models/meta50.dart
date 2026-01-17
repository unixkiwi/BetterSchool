// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta50.g.dart';

@JsonSerializable()
class Meta50 {
  const Meta50({
    required this.version,
  });
  
  factory Meta50.fromJson(Map<String, Object?> json) => _$Meta50FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta50ToJson(this);
}
