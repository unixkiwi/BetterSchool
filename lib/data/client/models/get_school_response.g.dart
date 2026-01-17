// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_school_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSchoolResponse _$GetSchoolResponseFromJson(Map<String, dynamic> json) =>
    GetSchoolResponse(
      data: School.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta106.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetSchoolResponseToJson(GetSchoolResponse instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
