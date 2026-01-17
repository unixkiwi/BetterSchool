// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta120.dart';

part 'post_students_id_restore_response.g.dart';

@JsonSerializable()
class PostStudentsIdRestoreResponse {
  const PostStudentsIdRestoreResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostStudentsIdRestoreResponse.fromJson(Map<String, Object?> json) => _$PostStudentsIdRestoreResponseFromJson(json);
  
  final Student data;
  final Meta120 meta;

  Map<String, Object?> toJson() => _$PostStudentsIdRestoreResponseToJson(this);
}
