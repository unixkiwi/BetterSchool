// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_importers_importer_logs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetImportersImporterLogsResponse _$GetImportersImporterLogsResponseFromJson(
  Map<String, dynamic> json,
) => GetImportersImporterLogsResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => ImporterLog.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: Meta63.fromJson(json['meta'] as Map<String, dynamic>),
  links: Links8.fromJson(json['links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetImportersImporterLogsResponseToJson(
  GetImportersImporterLogsResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'meta': instance.meta,
  'links': instance.links,
};
