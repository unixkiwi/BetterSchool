// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'teacher.dart';
import 'meta136.dart';

part 'post_teachers_id_restore_response.g.dart';

@JsonSerializable()
class PostTeachersIdRestoreResponse {
  const PostTeachersIdRestoreResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostTeachersIdRestoreResponse.fromJson(Map<String, Object?> json) => _$PostTeachersIdRestoreResponseFromJson(json);
  
  final Teacher data;
  final Meta136 meta;

  Map<String, Object?> toJson() => _$PostTeachersIdRestoreResponseToJson(this);
}
