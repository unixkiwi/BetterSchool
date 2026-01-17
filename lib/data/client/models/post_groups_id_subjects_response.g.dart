// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_groups_id_subjects_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostGroupsIdSubjectsResponse _$PostGroupsIdSubjectsResponseFromJson(
  Map<String, dynamic> json,
) => PostGroupsIdSubjectsResponse(
  data: Subject.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta45.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostGroupsIdSubjectsResponseToJson(
  PostGroupsIdSubjectsResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
