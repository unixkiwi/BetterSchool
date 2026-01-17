// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_importers_importer_load_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostImportersImporterLoadResponse _$PostImportersImporterLoadResponseFromJson(
  Map<String, dynamic> json,
) => PostImportersImporterLoadResponse(
  data: Importer.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta60.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostImportersImporterLoadResponseToJson(
  PostImportersImporterLoadResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
