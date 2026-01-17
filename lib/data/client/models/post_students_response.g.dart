// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_students_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostStudentsResponse _$PostStudentsResponseFromJson(
  Map<String, dynamic> json,
) => PostStudentsResponse(
  data: Student.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta122.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostStudentsResponseToJson(
  PostStudentsResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
