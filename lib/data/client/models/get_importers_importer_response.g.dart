// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_importers_importer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetImportersImporterResponse _$GetImportersImporterResponseFromJson(
  Map<String, dynamic> json,
) => GetImportersImporterResponse(
  data: Importer.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta65.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetImportersImporterResponseToJson(
  GetImportersImporterResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
