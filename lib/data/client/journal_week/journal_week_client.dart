// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_journal_weeks_nr_response.dart';
import '../models/get_journal_weeks_response.dart';
import '../models/post_journal_weeks_nr_response.dart';
import '../models/put_journal_weeks_nr_response.dart';

part 'journal_week_client.g.dart';

@RestApi()
abstract class JournalWeekClient {
  factory JournalWeekClient(Dio dio, {String? baseUrl}) = _JournalWeekClient;

  /// Journal Week: Store or Update
  @POST('/journal/weeks/{nr}')
  Future<PostJournalWeeksNrResponse> journalWeekStoreOrUpdate0({
    @Path('nr') required String nr,
  });

  /// Journal Week: Store or Update
  @PUT('/journal/weeks/{nr}')
  Future<PutJournalWeeksNrResponse> journalWeekStoreOrUpdate1({
    @Path('nr') required String nr,
  });

  /// Journal Week: Destroy
  @DELETE('/journal/weeks/{nr}')
  Future<void> journalWeekDestroy({
    @Path('nr') required String nr,
  });

  /// Journal Week: Show
  @GET('/journal/weeks/{nr}')
  Future<GetJournalWeeksNrResponse> journalWeekShow({
    @Path('nr') required String nr,
    @Query('include') String? include = '',
  });

  /// Journal Week: Index
  @GET('/journal/weeks')
  Future<GetJournalWeeksResponse> journalWeekIndex();
}
