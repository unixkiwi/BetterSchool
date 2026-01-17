// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_time_tables_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTimeTablesResponse _$GetTimeTablesResponseFromJson(
  Map<String, dynamic> json,
) => GetTimeTablesResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => TimeTable.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetTimeTablesResponseToJson(
  GetTimeTablesResponse instance,
) => <String, dynamic>{'data': instance.data};
