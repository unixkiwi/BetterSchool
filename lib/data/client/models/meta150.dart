// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta150.g.dart';

@JsonSerializable()
class Meta150 {
  const Meta150({
    required this.version,
  });
  
  factory Meta150.fromJson(Map<String, Object?> json) => _$Meta150FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta150ToJson(this);
}
