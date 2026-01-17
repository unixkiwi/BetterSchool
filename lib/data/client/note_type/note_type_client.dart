// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_types_notes_response.dart';
import '../models/post_types_notes_response.dart';
import '../models/put_types_notes_id_response.dart';
import '../models/store_note_type_request.dart';
import '../models/update_note_type_request.dart';

part 'note_type_client.g.dart';

@RestApi()
abstract class NoteTypeClient {
  factory NoteTypeClient(Dio dio, {String? baseUrl}) = _NoteTypeClient;

  @POST('/types/notes')
  Future<PostTypesNotesResponse> noteTypeStore({
    @Body() required StoreNoteTypeRequest body,
  });

  @GET('/types/notes')
  Future<GetTypesNotesResponse> noteTypeIndex();

  @PUT('/types/notes/{id}')
  Future<PutTypesNotesIdResponse> noteTypeUpdate({
    @Path('id') required int id,
    @Body() UpdateNoteTypeRequest? body,
  });

  @DELETE('/types/notes/{id}')
  Future<void> noteTypeDestroy({
    @Path('id') required String id,
  });
}
