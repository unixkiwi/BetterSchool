// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta140.g.dart';

@JsonSerializable()
class Meta140 {
  const Meta140({
    required this.version,
  });
  
  factory Meta140.fromJson(Map<String, Object?> json) => _$Meta140FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta140ToJson(this);
}
