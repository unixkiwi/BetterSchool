// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_students_token_guardian_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostStudentsTokenGuardianResponse _$PostStudentsTokenGuardianResponseFromJson(
  Map<String, dynamic> json,
) => PostStudentsTokenGuardianResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Student.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostStudentsTokenGuardianResponseToJson(
  PostStudentsTokenGuardianResponse instance,
) => <String, dynamic>{'data': instance.data};
