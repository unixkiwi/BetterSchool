// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/filter_result.dart';
import '../models/get_reports_id_response.dart';
import '../models/get_reports_response.dart';
import '../models/post_reports_response.dart';
import '../models/put_reports_id_response.dart';

part 'report_client.g.dart';

@RestApi()
abstract class ReportClient {
  factory ReportClient(Dio dio, {String? baseUrl}) = _ReportClient;

  /// Report: Preview Results.
  ///
  /// Generates a report result without saving report to the database.
  /// Accessed via POST so parameters can be found in request body ($data when validated).
  @POST('/reports/result')
  Future<dynamic> reportPreviewReport();

  /// Report: Generate Results.
  ///
  /// Generates a report or returns data from cache.
  @GET('/reports/{reportID}/result')
  Future<dynamic> reportReport({
    @Path('reportID') required String reportId,
    @Query('range_from') DateTime? rangeFrom,
    @Query('range_to') DateTime? rangeTo,
    @Query('clear_cache') bool? clearCache,
    @Query('sleep') int? sleep,
    @Query('filter_result') FilterResult? filterResult,
  });

  /// Report: Index
  @GET('/reports')
  Future<GetReportsResponse> reportsIndex();

  /// Report: Store
  @POST('/reports')
  Future<PostReportsResponse> reportsStore();

  /// Report: Show
  @GET('/reports/{id}')
  Future<GetReportsIdResponse> reportsShow({
    @Path('id') required String id,
  });

  /// Report: Update
  @PUT('/reports/{id}')
  Future<PutReportsIdResponse> reportsUpdate({
    @Path('id') required String id,
  });

  /// Report: Destroy
  @DELETE('/reports/{id}')
  Future<void> reportsDestroy({
    @Path('id') required String id,
  });
}
