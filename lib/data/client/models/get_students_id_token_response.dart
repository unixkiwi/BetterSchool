// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta112.dart';

part 'get_students_id_token_response.g.dart';

@JsonSerializable()
class GetStudentsIdTokenResponse {
  const GetStudentsIdTokenResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetStudentsIdTokenResponse.fromJson(Map<String, Object?> json) => _$GetStudentsIdTokenResponseFromJson(json);
  
  final Student data;
  final Meta112 meta;

  Map<String, Object?> toJson() => _$GetStudentsIdTokenResponseToJson(this);
}
