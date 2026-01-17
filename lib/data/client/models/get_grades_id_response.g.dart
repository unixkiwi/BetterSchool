// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_grades_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGradesIdResponse _$GetGradesIdResponseFromJson(Map<String, dynamic> json) =>
    GetGradesIdResponse(
      data: Grade.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta43.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetGradesIdResponseToJson(
  GetGradesIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
