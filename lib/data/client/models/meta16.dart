// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta16.g.dart';

@JsonSerializable()
class Meta16 {
  const Meta16({
    required this.version,
  });
  
  factory Meta16.fromJson(Map<String, Object?> json) => _$Meta16FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta16ToJson(this);
}
