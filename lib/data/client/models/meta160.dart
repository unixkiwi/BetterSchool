// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta160.g.dart';

@JsonSerializable()
class Meta160 {
  const Meta160({
    required this.version,
  });
  
  factory Meta160.fromJson(Map<String, Object?> json) => _$Meta160FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta160ToJson(this);
}
