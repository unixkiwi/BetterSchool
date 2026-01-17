// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_types_journal_notes_id_response.dart';
import '../models/get_types_journal_notes_response.dart';
import '../models/post_types_journal_notes_response.dart';
import '../models/put_types_journal_notes_id_response.dart';
import '../models/store_journal_note_type_request.dart';
import '../models/update_journal_note_type_request.dart';

part 'journal_note_type_client.g.dart';

@RestApi()
abstract class JournalNoteTypeClient {
  factory JournalNoteTypeClient(Dio dio, {String? baseUrl}) = _JournalNoteTypeClient;

  /// Journal Note Type: Store
  @POST('/types/journal-notes')
  Future<PostTypesJournalNotesResponse> journalNotesStore({
    @Body() required StoreJournalNoteTypeRequest body,
  });

  /// Journal Note Type: Index
  @GET('/types/journal-notes')
  Future<GetTypesJournalNotesResponse> journalNoteTypeIndex({
    @Query('filter') String? filter,
  });

  /// Journal Note Type: Show
  @GET('/types/journal-notes/{id}')
  Future<GetTypesJournalNotesIdResponse> journalNotesShow({
    @Path('id') required String id,
  });

  /// Journal Note Type: Update
  @PUT('/types/journal-notes/{id}')
  Future<PutTypesJournalNotesIdResponse> journalNotesUpdate({
    @Path('id') required String id,
    @Body() required UpdateJournalNoteTypeRequest body,
  });

  /// Journal Note Type: Destroy
  @DELETE('/types/journal-notes/{id}')
  Future<void> journalNotesDestroy({
    @Path('id') required String id,
  });
}
