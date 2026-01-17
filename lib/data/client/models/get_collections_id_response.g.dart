// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_collections_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCollectionsIdResponse _$GetCollectionsIdResponseFromJson(
  Map<String, dynamic> json,
) => GetCollectionsIdResponse(
  data: Collection.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta29.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetCollectionsIdResponseToJson(
  GetCollectionsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
