// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_time_table_times_id_response.dart';
import '../models/get_time_table_times_response.dart';
import '../models/post_time_table_times_response.dart';
import '../models/put_time_table_times_id_response.dart';
import '../models/store_time_table_time_request.dart';
import '../models/update_time_table_time_request.dart';

part 'time_table_time_client.g.dart';

@RestApi()
abstract class TimeTableTimeClient {
  factory TimeTableTimeClient(Dio dio, {String? baseUrl}) = _TimeTableTimeClient;

  /// Time Table Time: Store
  @POST('/time-table-times')
  Future<PostTimeTableTimesResponse> timeTableTimesStore({
    @Body() required StoreTimeTableTimeRequest body,
  });

  /// Time Table Time: Index
  @GET('/time-table-times')
  Future<GetTimeTableTimesResponse> timeTableTimesIndex();

  /// Time Table Time: Update
  @PUT('/time-table-times/{id}')
  Future<PutTimeTableTimesIdResponse> timeTableTimesUpdate({
    @Path('id') required String id,
    @Body() required UpdateTimeTableTimeRequest body,
  });

  /// Time Table Time: Destroy
  @DELETE('/time-table-times/{id}')
  Future<void> timeTableTimesDestroy({
    @Path('id') required String id,
  });

  /// Time Table Time: Show
  @GET('/time-table-times/{id}')
  Future<GetTimeTableTimesIdResponse> timeTableTimesShow({
    @Path('id') required String id,
  });
}
