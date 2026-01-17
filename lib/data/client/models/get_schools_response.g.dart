// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_schools_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSchoolsResponse _$GetSchoolsResponseFromJson(Map<String, dynamic> json) =>
    GetSchoolsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => School.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetSchoolsResponseToJson(GetSchoolsResponse instance) =>
    <String, dynamic>{'data': instance.data};
