// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'teacher.dart';
import 'meta134.dart';

part 'get_teachers_id_token_response.g.dart';

@JsonSerializable()
class GetTeachersIdTokenResponse {
  const GetTeachersIdTokenResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetTeachersIdTokenResponse.fromJson(Map<String, Object?> json) => _$GetTeachersIdTokenResponseFromJson(json);
  
  final Teacher data;
  final Meta134 meta;

  Map<String, Object?> toJson() => _$GetTeachersIdTokenResponseToJson(this);
}
