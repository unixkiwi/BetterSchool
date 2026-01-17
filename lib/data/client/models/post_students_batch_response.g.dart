// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_students_batch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostStudentsBatchResponse _$PostStudentsBatchResponseFromJson(
  Map<String, dynamic> json,
) => PostStudentsBatchResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Student.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostStudentsBatchResponseToJson(
  PostStudentsBatchResponse instance,
) => <String, dynamic>{'data': instance.data};
