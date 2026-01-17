// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_favorites_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFavoritesResponse _$GetFavoritesResponseFromJson(
  Map<String, dynamic> json,
) => GetFavoritesResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Favorite.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetFavoritesResponseToJson(
  GetFavoritesResponse instance,
) => <String, dynamic>{'data': instance.data};
