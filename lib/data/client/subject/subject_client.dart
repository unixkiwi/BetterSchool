// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/batch_subject_request.dart';
import '../models/get_subjects_id_response.dart';
import '../models/get_subjects_response.dart';
import '../models/post_subjects_batch_response.dart';
import '../models/post_subjects_id_restore_response.dart';
import '../models/post_subjects_response.dart';
import '../models/put_subjects_id_response.dart';
import '../models/store_subject_request.dart';

part 'subject_client.g.dart';

@RestApi()
abstract class SubjectClient {
  factory SubjectClient(Dio dio, {String? baseUrl}) = _SubjectClient;

  /// Subject: Destroy
  @POST('/subjects/{id}/restore')
  Future<PostSubjectsIdRestoreResponse> subjectRestore({
    @Path('id') required String id,
  });

  /// Subject: Batch
  @POST('/subjects/batch')
  Future<PostSubjectsBatchResponse> subjectBatch({
    @Body() BatchSubjectRequest? body,
  });

  /// Subject: Store
  @POST('/subjects')
  Future<PostSubjectsResponse> subjectsStore({
    @Body() required StoreSubjectRequest body,
  });

  /// Subject: Index
  @GET('/subjects')
  Future<GetSubjectsResponse> subjectsIndex();

  /// Subject: Show
  @GET('/subjects/{id}')
  Future<GetSubjectsIdResponse> subjectsShow({
    @Path('id') required String id,
  });

  /// Subject: Update
  @PUT('/subjects/{id}')
  Future<PutSubjectsIdResponse> subjectsUpdate({
    @Path('id') required String id,
  });

  /// Subject: Destroy
  @DELETE('/subjects/{id}')
  Future<void> subjectsDestroy({
    @Path('id') required String id,
  });
}
