// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_students_id_token_guardian_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetStudentsIdTokenGuardianResponse _$GetStudentsIdTokenGuardianResponseFromJson(
  Map<String, dynamic> json,
) => GetStudentsIdTokenGuardianResponse(
  data: Student.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta114.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetStudentsIdTokenGuardianResponseToJson(
  GetStudentsIdTokenGuardianResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
