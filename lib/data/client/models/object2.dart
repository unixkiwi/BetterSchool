// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'object2.g.dart';

@JsonSerializable()
class Object2 {
  const Object2({
    this.oneTimePassword = '',
  });
  
  factory Object2.fromJson(Map<String, Object?> json) => _$Object2FromJson(json);
  
  @JsonKey(name: 'one_time_password')
  final String oneTimePassword;

  Map<String, Object?> toJson() => _$Object2ToJson(this);
}
