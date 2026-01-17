// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';

part 'post_students_token_guardian_response.g.dart';

@JsonSerializable()
class PostStudentsTokenGuardianResponse {
  const PostStudentsTokenGuardianResponse({
    required this.data,
  });
  
  factory PostStudentsTokenGuardianResponse.fromJson(Map<String, Object?> json) => _$PostStudentsTokenGuardianResponseFromJson(json);
  
  final List<Student> data;

  Map<String, Object?> toJson() => _$PostStudentsTokenGuardianResponseToJson(this);
}
