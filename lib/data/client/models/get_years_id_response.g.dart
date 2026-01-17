// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_years_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetYearsIdResponse _$GetYearsIdResponseFromJson(Map<String, dynamic> json) =>
    GetYearsIdResponse(
      data: Year.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta160.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetYearsIdResponseToJson(GetYearsIdResponse instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
