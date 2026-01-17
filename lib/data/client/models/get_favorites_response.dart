// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'favorite.dart';

part 'get_favorites_response.g.dart';

@JsonSerializable()
class GetFavoritesResponse {
  const GetFavoritesResponse({
    required this.data,
  });
  
  factory GetFavoritesResponse.fromJson(Map<String, Object?> json) => _$GetFavoritesResponseFromJson(json);
  
  final List<Favorite> data;

  Map<String, Object?> toJson() => _$GetFavoritesResponseToJson(this);
}
