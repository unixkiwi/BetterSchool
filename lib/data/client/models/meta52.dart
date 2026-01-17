// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta52.g.dart';

@JsonSerializable()
class Meta52 {
  const Meta52({
    required this.version,
  });
  
  factory Meta52.fromJson(Map<String, Object?> json) => _$Meta52FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta52ToJson(this);
}
