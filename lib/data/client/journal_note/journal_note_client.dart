// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_journal_notes_id_response.dart';
import '../models/post_journal_days_date_notes_response.dart';
import '../models/post_journal_lessons_id_notes_response.dart';
import '../models/post_journal_lessons_lesson_students_student_notes_response.dart';
import '../models/post_journal_notes_response.dart';
import '../models/post_journal_weeks_nr_notes_response.dart';
import '../models/put_journal_notes_id_response.dart';
import '../models/store_for_day_journal_note_request.dart';
import '../models/store_for_lesson_journal_note_request.dart';
import '../models/store_for_lesson_student_journal_note_request.dart';
import '../models/store_for_week_journal_note_request.dart';
import '../models/store_journal_note_request.dart';
import '../models/update_journal_note_request.dart';

part 'journal_note_client.g.dart';

@RestApi()
abstract class JournalNoteClient {
  factory JournalNoteClient(Dio dio, {String? baseUrl}) = _JournalNoteClient;

  /// Journal Note: Store for Week
  @POST('/journal/weeks/{nr}/notes')
  Future<PostJournalWeeksNrNotesResponse> journalNoteStoreForWeek({
    @Path('nr') required String nr,
    @Body() required StoreForWeekJournalNoteRequest body,
  });

  /// Journal Note: Store for Day
  @POST('/journal/days/{date}/notes')
  Future<PostJournalDaysDateNotesResponse> journalNoteStoreForDay({
    @Path('date') required String date,
    @Body() required StoreForDayJournalNoteRequest body,
  });

  /// Journal Note: Store for Lesson
  @POST('/journal/lessons/{id}/notes')
  Future<PostJournalLessonsIdNotesResponse> journalNoteStoreForLesson({
    @Path('id') required String id,
    @Body() required StoreForLessonJournalNoteRequest body,
  });

  /// Journal Note: Store for Lesson Student
  @POST('/journal/lessons/{lesson}/students/{student}/notes')
  Future<PostJournalLessonsLessonStudentsStudentNotesResponse> journalNoteStoreForLessonStudent({
    @Path('lesson') required String lesson,
    @Path('student') required String student,
    @Body() required StoreForLessonStudentJournalNoteRequest body,
  });

  /// Journal Note: Store
  @POST('/journal/notes')
  Future<PostJournalNotesResponse> journalNoteStore({
    @Body() required StoreJournalNoteRequest body,
  });

  /// Journal Note: Show
  @GET('/journal/notes/{id}')
  Future<GetJournalNotesIdResponse> notesShow({
    @Path('id') required String id,
  });

  /// Journal Note: Update
  @PUT('/journal/notes/{id}')
  Future<PutJournalNotesIdResponse> journalNoteUpdate({
    @Path('id') required String id,
    @Body() required UpdateJournalNoteRequest body,
  });

  /// Journal Note: Destroy
  @DELETE('/journal/notes/{id}')
  Future<void> journalNoteDestroy({
    @Path('id') required String id,
  });
}
