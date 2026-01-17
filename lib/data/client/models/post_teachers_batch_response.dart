// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'teacher.dart';

part 'post_teachers_batch_response.g.dart';

@JsonSerializable()
class PostTeachersBatchResponse {
  const PostTeachersBatchResponse({
    required this.data,
  });
  
  factory PostTeachersBatchResponse.fromJson(Map<String, Object?> json) => _$PostTeachersBatchResponseFromJson(json);
  
  final List<Teacher> data;

  Map<String, Object?> toJson() => _$PostTeachersBatchResponseToJson(this);
}
