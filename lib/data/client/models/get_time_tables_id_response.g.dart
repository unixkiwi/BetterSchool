// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_time_tables_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTimeTablesIdResponse _$GetTimeTablesIdResponseFromJson(
  Map<String, dynamic> json,
) => GetTimeTablesIdResponse(
  data: TimeTable.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta142.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetTimeTablesIdResponseToJson(
  GetTimeTablesIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
