// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta144.g.dart';

@JsonSerializable()
class Meta144 {
  const Meta144({
    required this.version,
  });
  
  factory Meta144.fromJson(Map<String, Object?> json) => _$Meta144FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta144ToJson(this);
}
