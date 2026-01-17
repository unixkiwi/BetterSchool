// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';

part 'post_students_token_response.g.dart';

@JsonSerializable()
class PostStudentsTokenResponse {
  const PostStudentsTokenResponse({
    required this.data,
  });
  
  factory PostStudentsTokenResponse.fromJson(Map<String, Object?> json) => _$PostStudentsTokenResponseFromJson(json);
  
  final List<Student> data;

  Map<String, Object?> toJson() => _$PostStudentsTokenResponseToJson(this);
}
