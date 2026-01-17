// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_teachers_id_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTeachersIdTokenResponse _$GetTeachersIdTokenResponseFromJson(
  Map<String, dynamic> json,
) => GetTeachersIdTokenResponse(
  data: Teacher.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta134.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetTeachersIdTokenResponseToJson(
  GetTeachersIdTokenResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
