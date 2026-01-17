// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_types_checklist_id_response.dart';
import '../models/get_types_checklist_response.dart';
import '../models/post_types_checklist_response.dart';
import '../models/put_types_checklist_id_response.dart';
import '../models/store_checklist_type_request.dart';
import '../models/update_checklist_type_request.dart';

part 'checklist_type_client.g.dart';

@RestApi()
abstract class ChecklistTypeClient {
  factory ChecklistTypeClient(Dio dio, {String? baseUrl}) = _ChecklistTypeClient;

  /// ChecklistType: Store
  @POST('/types/checklist')
  Future<PostTypesChecklistResponse> checklistStore({
    @Body() required StoreChecklistTypeRequest body,
  });

  /// ChecklistType: Index
  @GET('/types/checklist')
  Future<GetTypesChecklistResponse> checklistTypeIndex();

  /// ChecklistType: Show
  @GET('/types/checklist/{id}')
  Future<GetTypesChecklistIdResponse> checklistShow({
    @Path('id') required String id,
  });

  /// ChecklistType: Update
  @PUT('/types/checklist/{id}')
  Future<PutTypesChecklistIdResponse> checklistUpdate({
    @Path('id') required String id,
    @Body() required UpdateChecklistTypeRequest body,
  });

  /// ChecklistType: Destroy
  @DELETE('/types/checklist/{id}')
  Future<void> checklistDestroy({
    @Path('id') required String id,
  });
}
