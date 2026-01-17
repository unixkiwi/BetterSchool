// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_teachers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostTeachersResponse _$PostTeachersResponseFromJson(
  Map<String, dynamic> json,
) => PostTeachersResponse(
  data: Teacher.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta137.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostTeachersResponseToJson(
  PostTeachersResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
