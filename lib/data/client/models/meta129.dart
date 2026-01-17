// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta129.g.dart';

@JsonSerializable()
class Meta129 {
  const Meta129({
    required this.version,
  });
  
  factory Meta129.fromJson(Map<String, Object?> json) => _$Meta129FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta129ToJson(this);
}
