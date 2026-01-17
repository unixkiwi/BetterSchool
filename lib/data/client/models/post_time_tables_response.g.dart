// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_time_tables_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostTimeTablesResponse _$PostTimeTablesResponseFromJson(
  Map<String, dynamic> json,
) => PostTimeTablesResponse(
  data: TimeTable.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta141.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostTimeTablesResponseToJson(
  PostTimeTablesResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
