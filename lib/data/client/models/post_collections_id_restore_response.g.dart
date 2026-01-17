// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_collections_id_restore_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostCollectionsIdRestoreResponse _$PostCollectionsIdRestoreResponseFromJson(
  Map<String, dynamic> json,
) => PostCollectionsIdRestoreResponse(
  data: Collection.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta26.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostCollectionsIdRestoreResponseToJson(
  PostCollectionsIdRestoreResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
