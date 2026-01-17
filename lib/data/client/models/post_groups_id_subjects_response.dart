// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'subject.dart';
import 'meta45.dart';

part 'post_groups_id_subjects_response.g.dart';

@JsonSerializable()
class PostGroupsIdSubjectsResponse {
  const PostGroupsIdSubjectsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostGroupsIdSubjectsResponse.fromJson(Map<String, Object?> json) => _$PostGroupsIdSubjectsResponseFromJson(json);
  
  final Subject data;
  final Meta45 meta;

  Map<String, Object?> toJson() => _$PostGroupsIdSubjectsResponseToJson(this);
}
