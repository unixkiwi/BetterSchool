// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_absence_batches_absence_batch_response.dart';
import '../models/get_absence_batches_response.dart';
import '../models/post_absence_batches_response.dart';
import '../models/put_absence_batches_absence_batch_response.dart';
import '../models/store_absence_batch_request.dart';
import '../models/update_absence_batch_request.dart';

part 'absence_batch_client.g.dart';

@RestApi()
abstract class AbsenceBatchClient {
  factory AbsenceBatchClient(Dio dio, {String? baseUrl}) = _AbsenceBatchClient;

  @POST('/absence-batches')
  Future<PostAbsenceBatchesResponse> absenceBatchesStore({
    @Body() required StoreAbsenceBatchRequest body,
  });

  @GET('/absence-batches')
  Future<GetAbsenceBatchesResponse> absenceBatchesIndex();

  /// [absenceBatch] - The absence batch ID
  @PUT('/absence-batches/{absenceBatch}')
  Future<PutAbsenceBatchesAbsenceBatchResponse> absenceBatchesUpdate({
    @Path('absenceBatch') required int absenceBatch,
    @Body() required UpdateAbsenceBatchRequest body,
  });

  /// [absenceBatch] - The absence batch ID
  @DELETE('/absence-batches/{absenceBatch}')
  Future<void> absenceBatchesDestroy({
    @Path('absenceBatch') required int absenceBatch,
  });

  /// [absenceBatch] - The absence batch ID
  @GET('/absence-batches/{absenceBatch}')
  Future<GetAbsenceBatchesAbsenceBatchResponse> absenceBatchesShow({
    @Path('absenceBatch') required int absenceBatch,
  });
}
