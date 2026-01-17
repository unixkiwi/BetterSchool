// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_teachers_id_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteTeachersIdTokenResponse _$DeleteTeachersIdTokenResponseFromJson(
  Map<String, dynamic> json,
) => DeleteTeachersIdTokenResponse(
  data: Teacher.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta135.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DeleteTeachersIdTokenResponseToJson(
  DeleteTeachersIdTokenResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
