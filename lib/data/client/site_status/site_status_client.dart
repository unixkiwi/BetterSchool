// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_status_response.dart';

part 'site_status_client.g.dart';

@RestApi()
abstract class SiteStatusClient {
  factory SiteStatusClient(Dio dio, {String? baseUrl}) = _SiteStatusClient;

  @GET('/status')
  Future<GetStatusResponse> siteStatusIndex();
}
