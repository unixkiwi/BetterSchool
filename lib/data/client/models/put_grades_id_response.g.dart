// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_grades_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutGradesIdResponse _$PutGradesIdResponseFromJson(Map<String, dynamic> json) =>
    PutGradesIdResponse(
      data: Grade.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta42.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PutGradesIdResponseToJson(
  PutGradesIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
