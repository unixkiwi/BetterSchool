// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_subjects_id_restore_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostSubjectsIdRestoreResponse _$PostSubjectsIdRestoreResponseFromJson(
  Map<String, dynamic> json,
) => PostSubjectsIdRestoreResponse(
  data: Subject.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta126.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostSubjectsIdRestoreResponseToJson(
  PostSubjectsIdRestoreResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
