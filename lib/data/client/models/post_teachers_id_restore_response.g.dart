// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_teachers_id_restore_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostTeachersIdRestoreResponse _$PostTeachersIdRestoreResponseFromJson(
  Map<String, dynamic> json,
) => PostTeachersIdRestoreResponse(
  data: Teacher.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta136.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostTeachersIdRestoreResponseToJson(
  PostTeachersIdRestoreResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
