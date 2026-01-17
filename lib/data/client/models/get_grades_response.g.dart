// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_grades_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGradesResponse _$GetGradesResponseFromJson(Map<String, dynamic> json) =>
    GetGradesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Grade.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetGradesResponseToJson(GetGradesResponse instance) =>
    <String, dynamic>{'data': instance.data};
