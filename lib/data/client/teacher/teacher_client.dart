// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/batch_teacher_request.dart';
import '../models/batch_token_teacher_request.dart';
import '../models/delete_teachers_id_token_response.dart';
import '../models/delete_teachers_id_user_response.dart';
import '../models/get_teachers_id_response.dart';
import '../models/get_teachers_id_token_response.dart';
import '../models/get_teachers_response.dart';
import '../models/post_teachers_batch_response.dart';
import '../models/post_teachers_id_restore_response.dart';
import '../models/post_teachers_response.dart';
import '../models/post_teachers_token_response.dart';
import '../models/put_teachers_id_response.dart';
import '../models/store_teacher_request.dart';
import '../models/update_teacher_request.dart';

part 'teacher_client.g.dart';

@RestApi()
abstract class TeacherClient {
  factory TeacherClient(Dio dio, {String? baseUrl}) = _TeacherClient;

  /// Teacher: Refresh Token
  @GET('/teachers/{id}/token')
  Future<GetTeachersIdTokenResponse> teacherRefreshToken({
    @Path('id') required String id,
  });

  /// Teacher: Remove Token
  @DELETE('/teachers/{id}/token')
  Future<DeleteTeachersIdTokenResponse> teacherRemoveToken({
    @Path('id') required String id,
  });

  /// Teacher: Batch Token
  @POST('/teachers/token')
  Future<PostTeachersTokenResponse> teacherBatchToken({
    @Body() required BatchTokenTeacherRequest body,
  });

  /// Teacher: Restore
  @POST('/teachers/{id}/restore')
  Future<PostTeachersIdRestoreResponse> teacherRestore({
    @Path('id') required String id,
  });

  /// Teacher: Batch
  @POST('/teachers/batch')
  Future<PostTeachersBatchResponse> teacherBatch({
    @Body() BatchTeacherRequest? body,
  });

  /// Teacher: Index
  @POST('/teachers')
  Future<PostTeachersResponse> teachersStore({
    @Body() required StoreTeacherRequest body,
  });

  /// Teacher: Index
  @GET('/teachers')
  Future<GetTeachersResponse> teachersIndex();

  /// Teacher: Update
  @PUT('/teachers/{id}')
  Future<PutTeachersIdResponse> teachersUpdate({
    @Path('id') required String id,
    @Body() required UpdateTeacherRequest body,
  });

  /// Teacher: Destroy
  @DELETE('/teachers/{id}')
  Future<void> teachersDestroy({
    @Path('id') required String id,
  });

  /// Teacher: Show
  @GET('/teachers/{id}')
  Future<GetTeachersIdResponse> teachersShow({
    @Path('id') required String id,
  });

  /// Teacher: Remove User
  @DELETE('/teachers/{id}/user')
  Future<DeleteTeachersIdUserResponse> teacherRemoveUser({
    @Path('id') required String id,
  });
}
