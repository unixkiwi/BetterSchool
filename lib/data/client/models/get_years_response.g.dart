// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_years_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetYearsResponse _$GetYearsResponseFromJson(Map<String, dynamic> json) =>
    GetYearsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Year.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetYearsResponseToJson(GetYearsResponse instance) =>
    <String, dynamic>{'data': instance.data};
