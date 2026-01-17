// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'teacher.dart';
import 'meta137.dart';

part 'post_teachers_response.g.dart';

@JsonSerializable()
class PostTeachersResponse {
  const PostTeachersResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostTeachersResponse.fromJson(Map<String, Object?> json) => _$PostTeachersResponseFromJson(json);
  
  final Teacher data;
  final Meta137 meta;

  Map<String, Object?> toJson() => _$PostTeachersResponseToJson(this);
}
