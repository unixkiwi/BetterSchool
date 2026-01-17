// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_schools_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostSchoolsResponse _$PostSchoolsResponseFromJson(Map<String, dynamic> json) =>
    PostSchoolsResponse(
      data: School.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta108.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostSchoolsResponseToJson(
  PostSchoolsResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
