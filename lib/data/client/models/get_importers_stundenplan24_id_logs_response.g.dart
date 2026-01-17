// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_importers_stundenplan24_id_logs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetImportersStundenplan24IdLogsResponse
_$GetImportersStundenplan24IdLogsResponseFromJson(Map<String, dynamic> json) =>
    GetImportersStundenplan24IdLogsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => ImporterLog.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta70.fromJson(json['meta'] as Map<String, dynamic>),
      links: Links10.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetImportersStundenplan24IdLogsResponseToJson(
  GetImportersStundenplan24IdLogsResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'meta': instance.meta,
  'links': instance.links,
};
