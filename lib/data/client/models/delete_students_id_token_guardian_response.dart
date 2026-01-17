// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta115.dart';

part 'delete_students_id_token_guardian_response.g.dart';

@JsonSerializable()
class DeleteStudentsIdTokenGuardianResponse {
  const DeleteStudentsIdTokenGuardianResponse({
    required this.data,
    required this.meta,
  });
  
  factory DeleteStudentsIdTokenGuardianResponse.fromJson(Map<String, Object?> json) => _$DeleteStudentsIdTokenGuardianResponseFromJson(json);
  
  final Student data;
  final Meta115 meta;

  Map<String, Object?> toJson() => _$DeleteStudentsIdTokenGuardianResponseToJson(this);
}
