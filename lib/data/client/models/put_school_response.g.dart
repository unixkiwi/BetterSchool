// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_school_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutSchoolResponse _$PutSchoolResponseFromJson(Map<String, dynamic> json) =>
    PutSchoolResponse(
      data: School.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta105.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PutSchoolResponseToJson(PutSchoolResponse instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
