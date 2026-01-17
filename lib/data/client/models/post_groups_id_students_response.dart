// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta44.dart';

part 'post_groups_id_students_response.g.dart';

@JsonSerializable()
class PostGroupsIdStudentsResponse {
  const PostGroupsIdStudentsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostGroupsIdStudentsResponse.fromJson(Map<String, Object?> json) => _$PostGroupsIdStudentsResponseFromJson(json);
  
  final Student data;
  final Meta44 meta;

  Map<String, Object?> toJson() => _$PostGroupsIdStudentsResponseToJson(this);
}
