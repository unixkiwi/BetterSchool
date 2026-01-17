// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta114.dart';

part 'get_students_id_token_guardian_response.g.dart';

@JsonSerializable()
class GetStudentsIdTokenGuardianResponse {
  const GetStudentsIdTokenGuardianResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetStudentsIdTokenGuardianResponse.fromJson(Map<String, Object?> json) => _$GetStudentsIdTokenGuardianResponseFromJson(json);
  
  final Student data;
  final Meta114 meta;

  Map<String, Object?> toJson() => _$GetStudentsIdTokenGuardianResponseToJson(this);
}
