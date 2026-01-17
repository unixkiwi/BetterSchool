// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'user.dart';
import 'meta158.dart';

part 'put_user_school_response.g.dart';

@JsonSerializable()
class PutUserSchoolResponse {
  const PutUserSchoolResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutUserSchoolResponse.fromJson(Map<String, Object?> json) => _$PutUserSchoolResponseFromJson(json);
  
  final User data;
  final Meta158 meta;

  Map<String, Object?> toJson() => _$PutUserSchoolResponseToJson(this);
}
