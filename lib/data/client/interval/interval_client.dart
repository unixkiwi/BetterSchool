// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_intervals_id_response.dart';
import '../models/get_intervals_response.dart';
import '../models/post_intervals_id_restore_response.dart';
import '../models/post_intervals_response.dart';
import '../models/put_intervals_id_response.dart';
import '../models/store_interval_request.dart';
import '../models/update_interval_request.dart';

part 'interval_client.g.dart';

@RestApi()
abstract class IntervalClient {
  factory IntervalClient(Dio dio, {String? baseUrl}) = _IntervalClient;

  /// Interval: Restore
  @POST('/intervals/{id}/restore')
  Future<PostIntervalsIdRestoreResponse> intervalRestore({
    @Path('id') required String id,
  });

  /// Interval: Store
  @POST('/intervals')
  Future<PostIntervalsResponse> intervalsStore({
    @Body() required StoreIntervalRequest body,
  });

  /// Interval: Index
  @GET('/intervals')
  Future<GetIntervalsResponse> intervalIndex();

  /// Interval: Show
  @GET('/intervals/{id}')
  Future<GetIntervalsIdResponse> intervalsShow({
    @Path('id') required String id,
  });

  /// Interval: Update
  @PUT('/intervals/{id}')
  Future<PutIntervalsIdResponse> intervalsUpdate({
    @Path('id') required String id,
    @Body() required UpdateIntervalRequest body,
  });

  /// Interval: Destroy
  @DELETE('/intervals/{id}')
  Future<void> intervalsDestroy({
    @Path('id') required String id,
  });
}
