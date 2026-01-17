// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_journal_day_student_id_response.dart';
import '../models/get_journal_day_student_response_union.dart';
import '../models/post_journal_day_student_response.dart';
import '../models/put_journal_day_student_id_response.dart';
import '../models/store_journal_day_student_request.dart';

part 'journal_day_student_client.g.dart';

@RestApi()
abstract class JournalDayStudentClient {
  factory JournalDayStudentClient(Dio dio, {String? baseUrl}) = _JournalDayStudentClient;

  /// Journal Day Student: Store
  @POST('/journal/day-student')
  Future<PostJournalDayStudentResponse> dayStudentStore({
    @Body() required StoreJournalDayStudentRequest body,
  });

  /// Journal Day Student: Index
  @GET('/journal/day-student')
  Future<GetJournalDayStudentResponseUnion> dayStudentIndex();

  /// Journal Day Student: Update
  @PUT('/journal/day-student/{id}')
  Future<PutJournalDayStudentIdResponse> dayStudentUpdate({
    @Path('id') required String id,
  });

  /// Journal Day Student: Destroy
  @DELETE('/journal/day-student/{id}')
  Future<void> dayStudentDestroy({
    @Path('id') required String id,
  });

  /// Journal Day Student: Show
  @GET('/journal/day-student/{id}')
  Future<GetJournalDayStudentIdResponse> dayStudentShow({
    @Path('id') required String id,
  });
}
