// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_years_id_response.dart';
import '../models/get_years_response.dart';
import '../models/post_years_current_response.dart';
import '../models/post_years_id_restore_response.dart';
import '../models/post_years_response.dart';
import '../models/put_years_id_response.dart';
import '../models/set_current_year_request.dart';
import '../models/store_year_request.dart';
import '../models/update_year_request.dart';

part 'year_client.g.dart';

@RestApi()
abstract class YearClient {
  factory YearClient(Dio dio, {String? baseUrl}) = _YearClient;

  /// Year: Index
  @GET('/years')
  Future<GetYearsResponse> yearIndex();

  /// Year: Store
  @POST('/years')
  Future<PostYearsResponse> yearsStore({
    @Body() required StoreYearRequest body,
  });

  /// Year: Show
  @GET('/years/{id}')
  Future<GetYearsIdResponse> yearsShow({
    @Path('id') required String id,
  });

  /// Year: Update
  @PUT('/years/{id}')
  Future<PutYearsIdResponse> yearsUpdate({
    @Path('id') required String id,
    @Body() required UpdateYearRequest body,
  });

  /// Year: Destroy
  @DELETE('/years/{id}')
  Future<void> yearsDestroy({
    @Path('id') required String id,
  });

  @POST('/years/{id}/restore')
  Future<PostYearsIdRestoreResponse> yearRestore({
    @Path('id') required String id,
  });

  /// Year: Set Current
  @POST('/years/current')
  Future<PostYearsCurrentResponse> yearSetCurrent({
    @Body() SetCurrentYearRequest? body,
  });
}
