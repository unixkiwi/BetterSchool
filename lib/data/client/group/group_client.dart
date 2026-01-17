// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/batch_group_request.dart';
import '../models/get_groups_group_response.dart';
import '../models/get_groups_response.dart';
import '../models/post_groups_batch_response.dart';
import '../models/post_groups_id_restore_response.dart';
import '../models/post_groups_id_students_response.dart';
import '../models/post_groups_id_subjects_response.dart';
import '../models/post_groups_id_subjects_subject_id_order_response.dart';
import '../models/post_groups_response.dart';
import '../models/put_groups_id_response.dart';
import '../models/store_group_request.dart';

part 'group_client.g.dart';

@RestApi()
abstract class GroupClient {
  factory GroupClient(Dio dio, {String? baseUrl}) = _GroupClient;

  /// Group: Batch
  @POST('/groups/batch')
  Future<PostGroupsBatchResponse> groupBatch({
    @Body() BatchGroupRequest? body,
  });

  /// Group: Sync
  @POST('/groups/sync')
  Future<void> groupSync();

  /// Group: Add Student
  @POST('/groups/{id}/students')
  Future<PostGroupsIdStudentsResponse> groupAddStudent({
    @Path('id') required String id,
  });

  /// Group: Remove Student
  @DELETE('/groups/{id}/students')
  Future<void> groupRemoveStudent({
    @Path('id') required String id,
  });

  /// Group: Add Subject
  @POST('/groups/{id}/subjects')
  Future<PostGroupsIdSubjectsResponse> groupAddSubject({
    @Path('id') required String id,
  });

  /// Group: Remove Subject
  @DELETE('/groups/{id}/subjects')
  Future<void> groupRemoveSubject({
    @Path('id') required String id,
  });

  /// Group: Restore
  @POST('/groups/{id}/restore')
  Future<PostGroupsIdRestoreResponse> groupRestore({
    @Path('id') required String id,
  });

  /// Group: Store
  @POST('/groups')
  Future<PostGroupsResponse> groupsStore({
    @Body() required StoreGroupRequest body,
  });

  /// Group: Index
  @GET('/groups')
  Future<GetGroupsResponse> groupsIndex();

  /// Group: Destroy
  @DELETE('/groups/{id}')
  Future<void> groupsDestroy({
    @Path('id') required String id,
  });

  /// Group: Update
  @PUT('/groups/{id}')
  Future<PutGroupsIdResponse> groupsUpdate({
    @Path('id') required String id,
  });

  /// Group: Set Order Collection Type
  @POST('/groups/{id}/subjects/{subject_id}/order')
  Future<PostGroupsIdSubjectsSubjectIdOrderResponse> groupSetOrderCollectionType({
    @Path('id') required String id,
    @Path('subject_id') required String subjectId,
  });

  /// Group: Show.
  ///
  /// [group] - The group ID.
  @GET('/groups/{group}')
  Future<GetGroupsGroupResponse> groupsShow({
    @Path('group') required int group,
  });
}
