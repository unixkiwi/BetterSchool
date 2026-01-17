// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta119.dart';

part 'delete_students_student_guardians_guardian_response.g.dart';

@JsonSerializable()
class DeleteStudentsStudentGuardiansGuardianResponse {
  const DeleteStudentsStudentGuardiansGuardianResponse({
    required this.data,
    required this.meta,
  });
  
  factory DeleteStudentsStudentGuardiansGuardianResponse.fromJson(Map<String, Object?> json) => _$DeleteStudentsStudentGuardiansGuardianResponseFromJson(json);
  
  final Student data;
  final Meta119 meta;

  Map<String, Object?> toJson() => _$DeleteStudentsStudentGuardiansGuardianResponseToJson(this);
}
