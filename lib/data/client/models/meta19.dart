// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta19.g.dart';

@JsonSerializable()
class Meta19 {
  const Meta19({
    required this.version,
  });
  
  factory Meta19.fromJson(Map<String, Object?> json) => _$Meta19FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta19ToJson(this);
}
