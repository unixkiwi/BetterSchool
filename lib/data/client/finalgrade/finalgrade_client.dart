// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_finalgrades_id_response.dart';
import '../models/get_finalgrades_response.dart';
import '../models/post_finalgrades_response.dart';
import '../models/put_finalgrades_id_response.dart';
import '../models/store_finalgrade_request.dart';
import '../models/update_finalgrade_request.dart';

part 'finalgrade_client.g.dart';

@RestApi()
abstract class FinalgradeClient {
  factory FinalgradeClient(Dio dio, {String? baseUrl}) = _FinalgradeClient;

  /// Finalgrade: Store
  @POST('/finalgrades')
  Future<PostFinalgradesResponse> finalgradesStore({
    @Body() required StoreFinalgradeRequest body,
  });

  /// Finalgrade: Index
  @GET('/finalgrades')
  Future<GetFinalgradesResponse> finalgradesIndex();

  /// Finalgrade: Update
  @PUT('/finalgrades/{id}')
  Future<PutFinalgradesIdResponse> finalgradesUpdate({
    @Path('id') required String id,
    @Body() UpdateFinalgradeRequest? body,
  });

  /// Finalgrade: Destroy
  @DELETE('/finalgrades/{id}')
  Future<void> finalgradesDestroy({
    @Path('id') required String id,
  });

  /// Finalgrade: Show
  @GET('/finalgrades/{id}')
  Future<GetFinalgradesIdResponse> finalgradesShow({
    @Path('id') required String id,
  });
}
