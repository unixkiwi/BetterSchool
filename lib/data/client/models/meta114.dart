// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta114.g.dart';

@JsonSerializable()
class Meta114 {
  const Meta114({
    required this.version,
  });
  
  factory Meta114.fromJson(Map<String, Object?> json) => _$Meta114FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta114ToJson(this);
}
