// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_subjects_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostSubjectsResponse _$PostSubjectsResponseFromJson(
  Map<String, dynamic> json,
) => PostSubjectsResponse(
  data: Subject.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta127.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostSubjectsResponseToJson(
  PostSubjectsResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
