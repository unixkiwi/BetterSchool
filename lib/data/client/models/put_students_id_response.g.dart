// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_students_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutStudentsIdResponse _$PutStudentsIdResponseFromJson(
  Map<String, dynamic> json,
) => PutStudentsIdResponse(
  data: Student.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta123.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutStudentsIdResponseToJson(
  PutStudentsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
