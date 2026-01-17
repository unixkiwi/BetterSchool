// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta125.dart';

part 'delete_students_student_id_user_user_id_response.g.dart';

@JsonSerializable()
class DeleteStudentsStudentIdUserUserIdResponse {
  const DeleteStudentsStudentIdUserUserIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory DeleteStudentsStudentIdUserUserIdResponse.fromJson(Map<String, Object?> json) => _$DeleteStudentsStudentIdUserUserIdResponseFromJson(json);
  
  final Student data;
  final Meta125 meta;

  Map<String, Object?> toJson() => _$DeleteStudentsStudentIdUserUserIdResponseToJson(this);
}
