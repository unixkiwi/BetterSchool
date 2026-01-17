// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';

part 'post_students_batch_response.g.dart';

@JsonSerializable()
class PostStudentsBatchResponse {
  const PostStudentsBatchResponse({
    required this.data,
  });
  
  factory PostStudentsBatchResponse.fromJson(Map<String, Object?> json) => _$PostStudentsBatchResponseFromJson(json);
  
  final List<Student> data;

  Map<String, Object?> toJson() => _$PostStudentsBatchResponseToJson(this);
}
