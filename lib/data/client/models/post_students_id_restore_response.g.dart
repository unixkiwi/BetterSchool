// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_students_id_restore_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostStudentsIdRestoreResponse _$PostStudentsIdRestoreResponseFromJson(
  Map<String, dynamic> json,
) => PostStudentsIdRestoreResponse(
  data: Student.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta120.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostStudentsIdRestoreResponseToJson(
  PostStudentsIdRestoreResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
