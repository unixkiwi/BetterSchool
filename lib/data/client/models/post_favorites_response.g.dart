// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_favorites_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostFavoritesResponse _$PostFavoritesResponseFromJson(
  Map<String, dynamic> json,
) => PostFavoritesResponse(
  data: Favorite.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta34.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostFavoritesResponseToJson(
  PostFavoritesResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
