// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_favorites_favorite_response.dart';
import '../models/get_favorites_response.dart';
import '../models/post_favorites_response.dart';
import '../models/put_favorites_favorite_response.dart';
import '../models/store_favorite_request.dart';
import '../models/update_favorite_request.dart';

part 'favorite_client.g.dart';

@RestApi()
abstract class FavoriteClient {
  factory FavoriteClient(Dio dio, {String? baseUrl}) = _FavoriteClient;

  /// Favorite: Index
  @GET('/favorites')
  Future<GetFavoritesResponse> favoritesIndex();

  /// Favorite: Store
  @POST('/favorites')
  Future<PostFavoritesResponse> favoritesStore({
    @Body() StoreFavoriteRequest? body,
  });

  /// Favorite: Show.
  ///
  /// [favorite] - The favorite ID.
  @GET('/favorites/{favorite}')
  Future<GetFavoritesFavoriteResponse> favoritesShow({
    @Path('favorite') required int favorite,
  });

  /// Favorite: Update.
  ///
  /// [favorite] - The favorite ID.
  @PUT('/favorites/{favorite}')
  Future<PutFavoritesFavoriteResponse> favoritesUpdate({
    @Path('favorite') required int favorite,
    @Body() UpdateFavoriteRequest? body,
  });

  /// Favorite: Destroy.
  ///
  /// [favorite] - The favorite ID.
  @DELETE('/favorites/{favorite}')
  Future<void> favoritesDestroy({
    @Path('favorite') required int favorite,
  });
}
