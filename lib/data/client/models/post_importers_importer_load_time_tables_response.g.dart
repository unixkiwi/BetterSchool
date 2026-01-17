// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_importers_importer_load_time_tables_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostImportersImporterLoadTimeTablesResponse
_$PostImportersImporterLoadTimeTablesResponseFromJson(
  Map<String, dynamic> json,
) => PostImportersImporterLoadTimeTablesResponse(
  data: Importer.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta61.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostImportersImporterLoadTimeTablesResponseToJson(
  PostImportersImporterLoadTimeTablesResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
