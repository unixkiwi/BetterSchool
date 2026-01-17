// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_teachers_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTeachersIdResponse _$GetTeachersIdResponseFromJson(
  Map<String, dynamic> json,
) => GetTeachersIdResponse(
  data: Teacher.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta139.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetTeachersIdResponseToJson(
  GetTeachersIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
