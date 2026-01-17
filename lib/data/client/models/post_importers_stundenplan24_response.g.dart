// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_importers_stundenplan24_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostImportersStundenplan24Response _$PostImportersStundenplan24ResponseFromJson(
  Map<String, dynamic> json,
) => PostImportersStundenplan24Response(
  data: ImporterStundenplan24.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta71.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostImportersStundenplan24ResponseToJson(
  PostImportersStundenplan24Response instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
