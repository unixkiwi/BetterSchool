// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_checklists_id_response.dart';
import '../models/get_checklists_response.dart';
import '../models/post_checklists_response.dart';
import '../models/put_checklists_checklist_response.dart';
import '../models/store_checklist_request.dart';
import '../models/update_checklist_request.dart';

part 'checklist_client.g.dart';

@RestApi()
abstract class ChecklistClient {
  factory ChecklistClient(Dio dio, {String? baseUrl}) = _ChecklistClient;

  /// Checklist: Store
  @POST('/checklists')
  Future<PostChecklistsResponse> checklistsStore({
    @Body() required StoreChecklistRequest body,
  });

  /// Checklist: Index
  @GET('/checklists')
  Future<GetChecklistsResponse> checklistsIndex();

  /// Checklist: Update.
  ///
  /// [checklist] - The checklist ID.
  @PUT('/checklists/{checklist}')
  Future<PutChecklistsChecklistResponse> checklistsUpdate({
    @Path('checklist') required int checklist,
    @Body() required UpdateChecklistRequest body,
  });

  /// Checklist: Destroy.
  ///
  /// [checklist] - The checklist ID.
  @DELETE('/checklists/{checklist}')
  Future<void> checklistsDestroy({
    @Path('checklist') required int checklist,
  });

  /// Checklist: Show
  @GET('/checklists/{id}')
  Future<GetChecklistsIdResponse> checklistsShow({
    @Path('id') required String id,
  });
}
