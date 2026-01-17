// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_time_tables_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutTimeTablesIdResponse _$PutTimeTablesIdResponseFromJson(
  Map<String, dynamic> json,
) => PutTimeTablesIdResponse(
  data: TimeTable.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta143.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutTimeTablesIdResponseToJson(
  PutTimeTablesIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
