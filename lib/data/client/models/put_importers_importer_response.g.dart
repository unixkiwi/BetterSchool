// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_importers_importer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutImportersImporterResponse _$PutImportersImporterResponseFromJson(
  Map<String, dynamic> json,
) => PutImportersImporterResponse(
  data: Importer.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta66.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutImportersImporterResponseToJson(
  PutImportersImporterResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
