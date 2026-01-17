// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_collections_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostCollectionsResponse _$PostCollectionsResponseFromJson(
  Map<String, dynamic> json,
) => PostCollectionsResponse(
  data: Collection.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta27.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostCollectionsResponseToJson(
  PostCollectionsResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
