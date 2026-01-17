// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_time_tables_current_response.dart';
import '../models/get_time_tables_id_response.dart';
import '../models/get_time_tables_response.dart';
import '../models/post_time_tables_response.dart';
import '../models/put_time_tables_id_response.dart';
import '../models/store_time_table_request.dart';
import '../models/update_time_table_request.dart';

part 'time_table_client.g.dart';

@RestApi()
abstract class TimeTableClient {
  factory TimeTableClient(Dio dio, {String? baseUrl}) = _TimeTableClient;

  /// Time Table: Index
  @GET('/time-tables')
  Future<GetTimeTablesResponse> timeTablesIndex();

  /// Time Table: Store
  @POST('/time-tables')
  Future<PostTimeTablesResponse> timeTablesStore({
    @Body() required StoreTimeTableRequest body,
  });

  /// Time Table: Show
  @GET('/time-tables/{id}')
  Future<GetTimeTablesIdResponse> timeTablesShow({
    @Path('id') required String id,
  });

  /// Time Table: Update
  @PUT('/time-tables/{id}')
  Future<PutTimeTablesIdResponse> timeTablesUpdate({
    @Path('id') required String id,
    @Body() required UpdateTimeTableRequest body,
  });

  /// Time Table: Destroy
  @DELETE('/time-tables/{id}')
  Future<void> timeTablesDestroy({
    @Path('id') required String id,
  });

  /// Time Table: Show Current
  @GET('/time-tables/current')
  Future<GetTimeTablesCurrentResponse> timeTableShowCurrent();
}
