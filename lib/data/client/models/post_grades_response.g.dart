// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_grades_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostGradesResponse _$PostGradesResponseFromJson(Map<String, dynamic> json) =>
    PostGradesResponse(
      data: Grade.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta41.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostGradesResponseToJson(PostGradesResponse instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
