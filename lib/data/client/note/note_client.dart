// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_notes_response.dart';
import '../models/post_notes_response.dart';
import '../models/put_notes_note_response.dart';
import '../models/store_note_request.dart';
import '../models/update_note_request.dart';

part 'note_client.g.dart';

@RestApi()
abstract class NoteClient {
  factory NoteClient(Dio dio, {String? baseUrl}) = _NoteClient;

  @POST('/notes')
  Future<PostNotesResponse> noteStore({
    @Body() required StoreNoteRequest body,
  });

  @GET('/notes')
  Future<GetNotesResponse> notesIndex();

  /// [note] - The note ID
  @PUT('/notes/{note}')
  Future<PutNotesNoteResponse> noteUpdate({
    @Path('note') required int note,
    @Body() UpdateNoteRequest? body,
  });

  /// [note] - The note ID
  @DELETE('/notes/{note}')
  Future<void> noteDestroy({
    @Path('note') required int note,
  });
}
