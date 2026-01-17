// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_favorites_favorite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutFavoritesFavoriteResponse _$PutFavoritesFavoriteResponseFromJson(
  Map<String, dynamic> json,
) => PutFavoritesFavoriteResponse(
  data: Favorite.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta36.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutFavoritesFavoriteResponseToJson(
  PutFavoritesFavoriteResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
