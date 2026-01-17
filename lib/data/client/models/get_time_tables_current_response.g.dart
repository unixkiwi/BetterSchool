// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_time_tables_current_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTimeTablesCurrentResponse _$GetTimeTablesCurrentResponseFromJson(
  Map<String, dynamic> json,
) => GetTimeTablesCurrentResponse(
  data: TimeTable.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta144.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetTimeTablesCurrentResponseToJson(
  GetTimeTablesCurrentResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
