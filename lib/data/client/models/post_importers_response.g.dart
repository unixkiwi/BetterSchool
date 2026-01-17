// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_importers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostImportersResponse _$PostImportersResponseFromJson(
  Map<String, dynamic> json,
) => PostImportersResponse(
  data: Importer.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta64.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostImportersResponseToJson(
  PostImportersResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
