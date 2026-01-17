// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta66.g.dart';

@JsonSerializable()
class Meta66 {
  const Meta66({
    required this.version,
  });
  
  factory Meta66.fromJson(Map<String, Object?> json) => _$Meta66FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta66ToJson(this);
}
