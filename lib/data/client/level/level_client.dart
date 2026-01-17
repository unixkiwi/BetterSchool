// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_levels_id_response.dart';
import '../models/get_levels_response.dart';
import '../models/post_levels_response.dart';
import '../models/put_levels_id_response.dart';
import '../models/store_level_request.dart';
import '../models/update_level_request.dart';

part 'level_client.g.dart';

@RestApi()
abstract class LevelClient {
  factory LevelClient(Dio dio, {String? baseUrl}) = _LevelClient;

  /// Level: Store
  @POST('/levels')
  Future<PostLevelsResponse> levelsStore({
    @Body() required StoreLevelRequest body,
  });

  /// Level: Index
  @GET('/levels')
  Future<GetLevelsResponse> levelsIndex();

  /// Level: Show
  @GET('/levels/{id}')
  Future<GetLevelsIdResponse> levelsShow({
    @Path('id') required String id,
  });

  /// Level: Update
  @PUT('/levels/{id}')
  Future<PutLevelsIdResponse> levelsUpdate({
    @Path('id') required String id,
    @Body() required UpdateLevelRequest body,
  });

  /// Level: Destroy
  @DELETE('/levels/{id}')
  Future<void> levelsDestroy({
    @Path('id') required String id,
  });
}
