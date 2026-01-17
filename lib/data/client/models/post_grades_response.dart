// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'grade.dart';
import 'meta41.dart';

part 'post_grades_response.g.dart';

@JsonSerializable()
class PostGradesResponse {
  const PostGradesResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostGradesResponse.fromJson(Map<String, Object?> json) => _$PostGradesResponseFromJson(json);
  
  final Grade data;
  final Meta41 meta;

  Map<String, Object?> toJson() => _$PostGradesResponseToJson(this);
}
