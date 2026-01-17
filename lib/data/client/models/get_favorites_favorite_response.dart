// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'favorite.dart';
import 'meta35.dart';

part 'get_favorites_favorite_response.g.dart';

@JsonSerializable()
class GetFavoritesFavoriteResponse {
  const GetFavoritesFavoriteResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetFavoritesFavoriteResponse.fromJson(Map<String, Object?> json) => _$GetFavoritesFavoriteResponseFromJson(json);
  
  final Favorite data;
  final Meta35 meta;

  Map<String, Object?> toJson() => _$GetFavoritesFavoriteResponseToJson(this);
}
