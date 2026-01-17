// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_favorites_favorite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFavoritesFavoriteResponse _$GetFavoritesFavoriteResponseFromJson(
  Map<String, dynamic> json,
) => GetFavoritesFavoriteResponse(
  data: Favorite.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta35.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetFavoritesFavoriteResponseToJson(
  GetFavoritesFavoriteResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
