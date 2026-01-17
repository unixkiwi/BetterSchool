// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_teachers_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostTeachersTokenResponse _$PostTeachersTokenResponseFromJson(
  Map<String, dynamic> json,
) => PostTeachersTokenResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Teacher.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostTeachersTokenResponseToJson(
  PostTeachersTokenResponse instance,
) => <String, dynamic>{'data': instance.data};
