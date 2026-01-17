// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_importers_importer_logs_response.dart';
import '../models/get_importers_importer_response.dart';
import '../models/get_importers_response.dart';
import '../models/post_importers_importer_load_response.dart';
import '../models/post_importers_importer_load_substitutionplans_response.dart';
import '../models/post_importers_importer_load_time_tables_response.dart';
import '../models/post_importers_response.dart';
import '../models/push_importer_request.dart';
import '../models/put_importers_importer_response.dart';
import '../models/store_importer_request.dart';
import '../models/update_importer_request.dart';

part 'importer_client.g.dart';

@RestApi()
abstract class ImporterClient {
  factory ImporterClient(Dio dio, {String? baseUrl}) = _ImporterClient;

  /// Importer: Load.
  ///
  /// [importer] - The importer ID.
  @POST('/importers/{importer}/load')
  Future<PostImportersImporterLoadResponse> importerLoad({
    @Path('importer') required int importer,
  });

  /// Importer: Load Time Tables.
  ///
  /// [importer] - The importer ID.
  @POST('/importers/{importer}/load/time-tables')
  Future<PostImportersImporterLoadTimeTablesResponse> importerLoadTimeTables({
    @Path('importer') required int importer,
  });

  /// Importer: Load Substitution Plans.
  ///
  /// [importer] - The importer ID.
  @POST('/importers/{importer}/load/substitutionplans')
  Future<PostImportersImporterLoadSubstitutionplansResponse> importerLoadSubstitutionPlans({
    @Path('importer') required int importer,
  });

  /// Importer: Index Logs.
  ///
  /// [importer] - The importer ID.
  @GET('/importers/{importer}/logs')
  Future<GetImportersImporterLogsResponse> importerIndexLogs({
    @Path('importer') required int importer,
  });

  /// Importer: Index
  @GET('/importers')
  Future<GetImportersResponse> importersIndex();

  /// Importer: Store
  @POST('/importers')
  Future<PostImportersResponse> importersStore({
    @Body() required StoreImporterRequest body,
  });

  /// Importer: Show.
  ///
  /// [importer] - The importer ID.
  @GET('/importers/{importer}')
  Future<GetImportersImporterResponse> importersShow({
    @Path('importer') required int importer,
  });

  /// Importer: Update.
  ///
  /// [importer] - The importer ID.
  @PUT('/importers/{importer}')
  Future<PutImportersImporterResponse> importersUpdate({
    @Path('importer') required int importer,
    @Body() required UpdateImporterRequest body,
  });

  /// Importer: Destroy.
  ///
  /// [importer] - The importer ID.
  @DELETE('/importers/{importer}')
  Future<void> importersDestroy({
    @Path('importer') required int importer,
  });

  /// Importer: Push
  @POST('/importers/webhooks/{secret}')
  Future<void> importerPush({
    @Path('secret') required String secret,
    @Body() required PushImporterRequest body,
  });
}
