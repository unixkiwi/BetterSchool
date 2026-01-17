// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta121.dart';

part 'post_interval_student_id_restore_response.g.dart';

@JsonSerializable()
class PostIntervalStudentIdRestoreResponse {
  const PostIntervalStudentIdRestoreResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostIntervalStudentIdRestoreResponse.fromJson(Map<String, Object?> json) => _$PostIntervalStudentIdRestoreResponseFromJson(json);
  
  final Student data;
  final Meta121 meta;

  Map<String, Object?> toJson() => _$PostIntervalStudentIdRestoreResponseToJson(this);
}
