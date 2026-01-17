// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_subjects_batch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostSubjectsBatchResponse _$PostSubjectsBatchResponseFromJson(
  Map<String, dynamic> json,
) => PostSubjectsBatchResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Subject.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostSubjectsBatchResponseToJson(
  PostSubjectsBatchResponse instance,
) => <String, dynamic>{'data': instance.data};
