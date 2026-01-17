// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_years_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutYearsIdResponse _$PutYearsIdResponseFromJson(Map<String, dynamic> json) =>
    PutYearsIdResponse(
      data: Year.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta161.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PutYearsIdResponseToJson(PutYearsIdResponse instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
