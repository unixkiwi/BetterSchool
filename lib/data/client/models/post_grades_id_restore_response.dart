// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'grade.dart';
import 'meta40.dart';

part 'post_grades_id_restore_response.g.dart';

@JsonSerializable()
class PostGradesIdRestoreResponse {
  const PostGradesIdRestoreResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostGradesIdRestoreResponse.fromJson(Map<String, Object?> json) => _$PostGradesIdRestoreResponseFromJson(json);
  
  final Grade data;
  final Meta40 meta;

  Map<String, Object?> toJson() => _$PostGradesIdRestoreResponseToJson(this);
}
