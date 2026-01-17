// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'favorite.dart';
import 'meta36.dart';

part 'put_favorites_favorite_response.g.dart';

@JsonSerializable()
class PutFavoritesFavoriteResponse {
  const PutFavoritesFavoriteResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutFavoritesFavoriteResponse.fromJson(Map<String, Object?> json) => _$PutFavoritesFavoriteResponseFromJson(json);
  
  final Favorite data;
  final Meta36 meta;

  Map<String, Object?> toJson() => _$PutFavoritesFavoriteResponseToJson(this);
}
