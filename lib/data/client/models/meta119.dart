// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'meta119.g.dart';

@JsonSerializable()
class Meta119 {
  const Meta119({
    required this.version,
  });
  
  factory Meta119.fromJson(Map<String, Object?> json) => _$Meta119FromJson(json);
  
  final String version;

  Map<String, Object?> toJson() => _$Meta119ToJson(this);
}
