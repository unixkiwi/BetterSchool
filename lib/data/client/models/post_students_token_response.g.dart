// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_students_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostStudentsTokenResponse _$PostStudentsTokenResponseFromJson(
  Map<String, dynamic> json,
) => PostStudentsTokenResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Student.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostStudentsTokenResponseToJson(
  PostStudentsTokenResponse instance,
) => <String, dynamic>{'data': instance.data};
