// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_importers_stundenplan24_id_logs_response.dart';
import '../models/get_importers_stundenplan24_id_response.dart';
import '../models/get_importers_stundenplan24_response.dart';
import '../models/post_importers_stundenplan24_id_load_response.dart';
import '../models/post_importers_stundenplan24_id_load_substitutionplan_response.dart';
import '../models/post_importers_stundenplan24_id_load_time_table_response.dart';
import '../models/post_importers_stundenplan24_response.dart';
import '../models/put_importers_stundenplan24_id_response.dart';
import '../models/store_importer_stundenplan24_request.dart';
import '../models/update_importer_stundenplan24_request.dart';

part 'importer_stundenplan24_client.g.dart';

@RestApi()
abstract class ImporterStundenplan24Client {
  factory ImporterStundenplan24Client(Dio dio, {String? baseUrl}) = _ImporterStundenplan24Client;

  /// Stundenplan24: Load
  @POST('/importers/stundenplan24/{id}/load')
  Future<PostImportersStundenplan24IdLoadResponse> importerStundenplan24Load({
    @Path('id') required String id,
  });

  /// Stundenplan24: Load Time Table
  @POST('/importers/stundenplan24/{id}/load/time-table')
  Future<PostImportersStundenplan24IdLoadTimeTableResponse> importerStundenplan24LoadTimeTable({
    @Path('id') required String id,
  });

  /// Stundenplan24: Load Substitution Plan
  @POST('/importers/stundenplan24/{id}/load/substitutionplan')
  Future<PostImportersStundenplan24IdLoadSubstitutionplanResponse> importerStundenplan24LoadSubstitutionPlan({
    @Path('id') required String id,
  });

  /// Stundenplan24: Index Logs
  @GET('/importers/stundenplan24/{id}/logs')
  Future<GetImportersStundenplan24IdLogsResponse> importerStundenplan24IndexLogs({
    @Path('id') required String id,
  });

  /// Stundenplan24: Index
  @GET('/importers/stundenplan24')
  Future<GetImportersStundenplan24Response> stundenplan24Index();

  /// Stundenplan24: Store
  @POST('/importers/stundenplan24')
  Future<PostImportersStundenplan24Response> stundenplan24Store({
    @Body() required StoreImporterStundenplan24Request body,
  });

  /// Stundenplan24: Show
  @GET('/importers/stundenplan24/{id}')
  Future<GetImportersStundenplan24IdResponse> stundenplan24Show({
    @Path('id') required String id,
  });

  /// Stundenplan24: Update
  @PUT('/importers/stundenplan24/{id}')
  Future<PutImportersStundenplan24IdResponse> stundenplan24Update({
    @Path('id') required String id,
    @Body() required UpdateImporterStundenplan24Request body,
  });

  /// Stundenplan24: Destroy
  @DELETE('/importers/stundenplan24/{id}')
  Future<void> stundenplan24Destroy({
    @Path('id') required String id,
  });
}
