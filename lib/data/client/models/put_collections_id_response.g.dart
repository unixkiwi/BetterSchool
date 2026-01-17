// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_collections_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutCollectionsIdResponse _$PutCollectionsIdResponseFromJson(
  Map<String, dynamic> json,
) => PutCollectionsIdResponse(
  data: Collection.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta28.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutCollectionsIdResponseToJson(
  PutCollectionsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
