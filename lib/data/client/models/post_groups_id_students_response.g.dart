// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_groups_id_students_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostGroupsIdStudentsResponse _$PostGroupsIdStudentsResponseFromJson(
  Map<String, dynamic> json,
) => PostGroupsIdStudentsResponse(
  data: Student.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta44.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostGroupsIdStudentsResponseToJson(
  PostGroupsIdStudentsResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
