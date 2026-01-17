// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_students_id_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetStudentsIdTokenResponse _$GetStudentsIdTokenResponseFromJson(
  Map<String, dynamic> json,
) => GetStudentsIdTokenResponse(
  data: Student.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta112.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetStudentsIdTokenResponseToJson(
  GetStudentsIdTokenResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
