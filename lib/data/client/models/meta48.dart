// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta48.g.dart';

@JsonSerializable()
class Meta48 {
  const Meta48({
    required this.version,
  });
  
  factory Meta48.fromJson(Map<String, Object?> json) => _$Meta48FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta48ToJson(this);
}
