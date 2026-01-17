// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_time_table_time_lessons_id_response.dart';
import '../models/get_time_table_time_lessons_response.dart';
import '../models/post_time_table_time_lessons_response.dart';
import '../models/put_time_table_time_lessons_id_response.dart';
import '../models/store_time_table_time_lesson_request.dart';
import '../models/update_time_table_time_lesson_request.dart';

part 'time_table_time_lesson_client.g.dart';

@RestApi()
abstract class TimeTableTimeLessonClient {
  factory TimeTableTimeLessonClient(Dio dio, {String? baseUrl}) = _TimeTableTimeLessonClient;

  /// Time Table Time Lesson: Store
  @POST('/time-table-time-lessons')
  Future<PostTimeTableTimeLessonsResponse> timeTableTimeLessonsStore({
    @Body() required StoreTimeTableTimeLessonRequest body,
  });

  /// Time Table Time Lesson: Index
  @GET('/time-table-time-lessons')
  Future<GetTimeTableTimeLessonsResponse> timeTableTimeLessonsIndex();

  /// Time Table Time Lesson: Update
  @PUT('/time-table-time-lessons/{id}')
  Future<PutTimeTableTimeLessonsIdResponse> timeTableTimeLessonsUpdate({
    @Path('id') required String id,
    @Body() required UpdateTimeTableTimeLessonRequest body,
  });

  /// Time Table Time Lesson: Destroy
  @DELETE('/time-table-time-lessons/{id}')
  Future<void> timeTableTimeLessonsDestroy({
    @Path('id') required String id,
  });

  /// Time Table Time Lesson: Show
  @GET('/time-table-time-lessons/{id}')
  Future<GetTimeTableTimeLessonsIdResponse> timeTableTimeLessonsShow({
    @Path('id') required String id,
  });
}
