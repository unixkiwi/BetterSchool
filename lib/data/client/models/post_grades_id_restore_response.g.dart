// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_grades_id_restore_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostGradesIdRestoreResponse _$PostGradesIdRestoreResponseFromJson(
  Map<String, dynamic> json,
) => PostGradesIdRestoreResponse(
  data: Grade.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta40.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostGradesIdRestoreResponseToJson(
  PostGradesIdRestoreResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
