// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_students_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetStudentsIdResponse _$GetStudentsIdResponseFromJson(
  Map<String, dynamic> json,
) => GetStudentsIdResponse(
  data: Student.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta124.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetStudentsIdResponseToJson(
  GetStudentsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
