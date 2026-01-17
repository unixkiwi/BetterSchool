// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_reports_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetReportsResponse _$GetReportsResponseFromJson(Map<String, dynamic> json) =>
    GetReportsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Report.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetReportsResponseToJson(GetReportsResponse instance) =>
    <String, dynamic>{'data': instance.data};
