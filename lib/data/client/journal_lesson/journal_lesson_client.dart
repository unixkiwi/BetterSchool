// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_journal_lessons_id_response.dart';
import '../models/get_journal_lessons_response_sealed.dart';
import '../models/post_journal_days_date_lessons_response.dart';
import '../models/post_journal_lessons_response.dart';
import '../models/put_journal_lessons_id_response.dart';
import '../models/store_journal_lesson_request.dart';
import '../models/update_journal_lesson_request.dart';

part 'journal_lesson_client.g.dart';

@RestApi()
abstract class JournalLessonClient {
  factory JournalLessonClient(Dio dio, {String? baseUrl}) =
      _JournalLessonClient;

  /// JournalLesson: Store
  @POST('/journal/days/{date}/lessons')
  Future<PostJournalDaysDateLessonsResponse> journalLessonStore0({
    @Path('date') required String date,
    @Body() required StoreJournalLessonRequest body,
  });

  /// JournalLesson: Store
  @POST('/journal/lessons')
  Future<PostJournalLessonsResponse> lessonsStore({
    @Body() required StoreJournalLessonRequest body,
  });

  /// JournalLesson: Index
  @GET('/journal/lessons')
  Future<GetJournalLessonsResponseSealed> journalLessonIndex();

  /// JournalLesson: Update
  @PUT('/journal/lessons/{id}')
  Future<PutJournalLessonsIdResponse> lessonsUpdate({
    @Path('id') required String id,
    @Body() UpdateJournalLessonRequest? body,
  });

  /// JournalLesson: Destroy
  @DELETE('/journal/lessons/{id}')
  Future<void> lessonsDestroy({@Path('id') required String id});

  /// JournalLesson: Show
  @GET('/journal/lessons/{id}')
  Future<GetJournalLessonsIdResponse> journalLessonShow({
    @Path('id') required String id,
  });
}
