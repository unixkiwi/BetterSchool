// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_teachers_batch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostTeachersBatchResponse _$PostTeachersBatchResponseFromJson(
  Map<String, dynamic> json,
) => PostTeachersBatchResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Teacher.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostTeachersBatchResponseToJson(
  PostTeachersBatchResponse instance,
) => <String, dynamic>{'data': instance.data};
