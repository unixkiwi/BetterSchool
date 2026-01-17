// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta122.dart';

part 'post_students_response.g.dart';

@JsonSerializable()
class PostStudentsResponse {
  const PostStudentsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostStudentsResponse.fromJson(Map<String, Object?> json) => _$PostStudentsResponseFromJson(json);
  
  final Student data;
  final Meta122 meta;

  Map<String, Object?> toJson() => _$PostStudentsResponseToJson(this);
}
