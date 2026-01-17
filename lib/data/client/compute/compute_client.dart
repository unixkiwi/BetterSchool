// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_types_interval_response.dart';
import '../models/get_types_report_response.dart';
import '../models/get_types_time_names_response.dart';
import '../models/get_types_time_response.dart';

part 'compute_client.g.dart';

@RestApi()
abstract class ComputeClient {
  factory ComputeClient(Dio dio, {String? baseUrl}) = _ComputeClient;

  /// Compute: Interval Types
  @GET('/types/interval')
  Future<GetTypesIntervalResponse> computeIntervalTypes();

  /// Compute: Time Types
  @GET('/types/time')
  Future<GetTypesTimeResponse> computeTimeTypes();

  /// Metadata for the Reports tool
  @GET('/types/report')
  Future<GetTypesReportResponse> computeReportTypes();

  /// Compute: Time Names
  @GET('/types/time-names')
  Future<GetTypesTimeNamesResponse> computeTimeNames();
}
