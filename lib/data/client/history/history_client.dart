// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_histories_response.dart';
import '../models/get_histories_table_table_id_response.dart';
import '../models/get_histories_table_table_response.dart';

part 'history_client.g.dart';

@RestApi()
abstract class HistoryClient {
  factory HistoryClient(Dio dio, {String? baseUrl}) = _HistoryClient;

  /// History: Show all history entries of the entire school
  @GET('/histories')
  Future<GetHistoriesResponse> historyShowSchool();

  /// History: Index Group Subject
  @GET('/histories/table/group-subject')
  Future<dynamic> historyIndexGroupSubject();

  /// History: Show Table
  @GET('/histories/table/{table}')
  Future<GetHistoriesTableTableResponse> historyShowTable({
    @Path('table') required String table,
  });

  /// History: Show ID
  @GET('/histories/table/{table}/{id}')
  Future<GetHistoriesTableTableIdResponse> historyShowId({
    @Path('table') required String table,
    @Path('id') required String id,
  });
}
