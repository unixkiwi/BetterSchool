// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_journal_days_date_response.dart';
import '../models/get_journal_days_response.dart';
import '../models/post_journal_days_date_response.dart';
import '../models/put_journal_days_date_response.dart';
import '../models/store_or_update_journal_day_request.dart';

part 'journal_day_client.g.dart';

@RestApi()
abstract class JournalDayClient {
  factory JournalDayClient(Dio dio, {String? baseUrl}) = _JournalDayClient;

  /// Journal Day: Store or Update
  @POST('/journal/days/{date}')
  Future<PostJournalDaysDateResponse> journalDayStoreOrUpdate0({
    @Path('date') required String date,
    @Body() StoreOrUpdateJournalDayRequest? body,
  });

  /// Journal Day: Store or Update
  @PUT('/journal/days/{date}')
  Future<PutJournalDaysDateResponse> journalDayStoreOrUpdate1({
    @Path('date') required String date,
    @Body() StoreOrUpdateJournalDayRequest? body,
  });

  /// Journal Day: Destroy
  @DELETE('/journal/days/{date}')
  Future<void> journalDayDestroy({
    @Path('date') required String date,
  });

  /// Journal Day: Show
  @GET('/journal/days/{date}')
  Future<GetJournalDaysDateResponse> journalDayShow({
    @Path('date') required String date,
    @Query('include') String? include = '',
  });

  /// Journal Day: Index
  @GET('/journal/days')
  Future<GetJournalDaysResponse> journalDayIndex({
    @Query('include') String? include = '',
  });
}
