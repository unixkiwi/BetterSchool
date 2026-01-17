// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta43.g.dart';

@JsonSerializable()
class Meta43 {
  const Meta43({
    required this.version,
  });
  
  factory Meta43.fromJson(Map<String, Object?> json) => _$Meta43FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta43ToJson(this);
}
