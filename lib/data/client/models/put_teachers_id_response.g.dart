// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_teachers_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutTeachersIdResponse _$PutTeachersIdResponseFromJson(
  Map<String, dynamic> json,
) => PutTeachersIdResponse(
  data: Teacher.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta138.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutTeachersIdResponseToJson(
  PutTeachersIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
