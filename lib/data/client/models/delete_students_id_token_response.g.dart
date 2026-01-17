// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_students_id_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteStudentsIdTokenResponse _$DeleteStudentsIdTokenResponseFromJson(
  Map<String, dynamic> json,
) => DeleteStudentsIdTokenResponse(
  data: Student.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta113.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DeleteStudentsIdTokenResponseToJson(
  DeleteStudentsIdTokenResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
