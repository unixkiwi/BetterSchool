// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_journal_lesson_student_id_response.dart';
import '../models/get_journal_lesson_student_response_union.dart';
import '../models/post_journal_lesson_student_response.dart';
import '../models/put_journal_lesson_student_id_response.dart';
import '../models/store_journal_lesson_student_request.dart';
import '../models/update_journal_lesson_student_request.dart';

part 'journal_lesson_student_client.g.dart';

@RestApi()
abstract class JournalLessonStudentClient {
  factory JournalLessonStudentClient(Dio dio, {String? baseUrl}) = _JournalLessonStudentClient;

  /// Journal Lesson Student: Store
  @POST('/journal/lesson-student')
  Future<PostJournalLessonStudentResponse> lessonStudentStore({
    @Body() required StoreJournalLessonStudentRequest body,
  });

  /// Journal Lesson Student: Index
  @GET('/journal/lesson-student')
  Future<GetJournalLessonStudentResponseUnion> lessonStudentIndex();

  /// Journal Lesson Student: Update
  @PUT('/journal/lesson-student/{id}')
  Future<PutJournalLessonStudentIdResponse> lessonStudentUpdate({
    @Path('id') required String id,
    @Body() UpdateJournalLessonStudentRequest? body,
  });

  /// Journal Lesson Student: Destroy
  @DELETE('/journal/lesson-student/{id}')
  Future<void> lessonStudentDestroy({
    @Path('id') required String id,
  });

  /// Journal Lesson Student: Show
  @GET('/journal/lesson-student/{id}')
  Future<GetJournalLessonStudentIdResponse> lessonStudentShow({
    @Path('id') required String id,
  });
}
