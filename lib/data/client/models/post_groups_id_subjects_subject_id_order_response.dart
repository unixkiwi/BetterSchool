// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'post_groups_id_subjects_subject_id_order_response.g.dart';

@JsonSerializable()
class PostGroupsIdSubjectsSubjectIdOrderResponse {
  const PostGroupsIdSubjectsSubjectIdOrderResponse({
    required this.data,
  });
  
  factory PostGroupsIdSubjectsSubjectIdOrderResponse.fromJson(Map<String, Object?> json) => _$PostGroupsIdSubjectsSubjectIdOrderResponseFromJson(json);
  
  final Data data;

  Map<String, Object?> toJson() => _$PostGroupsIdSubjectsSubjectIdOrderResponseToJson(this);
}
