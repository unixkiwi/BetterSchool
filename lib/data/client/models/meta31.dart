// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta31.g.dart';

@JsonSerializable()
class Meta31 {
  const Meta31({
    required this.version,
  });
  
  factory Meta31.fromJson(Map<String, Object?> json) => _$Meta31FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta31ToJson(this);
}
