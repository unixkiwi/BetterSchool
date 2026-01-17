// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta72.g.dart';

@JsonSerializable()
class Meta72 {
  const Meta72({
    required this.version,
  });
  
  factory Meta72.fromJson(Map<String, Object?> json) => _$Meta72FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta72ToJson(this);
}
