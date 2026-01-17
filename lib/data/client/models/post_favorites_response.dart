// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'favorite.dart';
import 'meta34.dart';

part 'post_favorites_response.g.dart';

@JsonSerializable()
class PostFavoritesResponse {
  const PostFavoritesResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostFavoritesResponse.fromJson(Map<String, Object?> json) => _$PostFavoritesResponseFromJson(json);
  
  final Favorite data;
  final Meta34 meta;

  Map<String, Object?> toJson() => _$PostFavoritesResponseToJson(this);
}
