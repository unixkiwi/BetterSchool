// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/batch_student_request.dart';
import '../models/batch_token_guardian_student_request.dart';
import '../models/batch_token_student_request.dart';
import '../models/delete_students_id_intervals_interval_response.dart';
import '../models/delete_students_id_token_guardian_response.dart';
import '../models/delete_students_id_token_response.dart';
import '../models/delete_students_student_guardians_guardian_response.dart';
import '../models/delete_students_student_id_user_user_id_response.dart';
import '../models/get_students_id_response.dart';
import '../models/get_students_id_token_guardian_response.dart';
import '../models/get_students_id_token_response.dart';
import '../models/get_students_response.dart';
import '../models/post_interval_student_id_restore_response.dart';
import '../models/post_students_batch_response.dart';
import '../models/post_students_id_intervals_interval_response.dart';
import '../models/post_students_id_restore_response.dart';
import '../models/post_students_id_subjects_subject_id_calculation_response.dart';
import '../models/post_students_response.dart';
import '../models/post_students_token_guardian_response.dart';
import '../models/post_students_token_response.dart';
import '../models/put_students_id_intervals_interval_response.dart';
import '../models/put_students_id_response.dart';
import '../models/set_subject_calculation_student_request.dart';
import '../models/store_student_request.dart';
import '../models/store_update_interval_student_request.dart';

part 'student_client.g.dart';

@RestApi()
abstract class StudentClient {
  factory StudentClient(Dio dio, {String? baseUrl}) = _StudentClient;

  /// Student: Refresh Token
  @GET('/students/{id}/token')
  Future<GetStudentsIdTokenResponse> studentRefreshToken({
    @Path('id') required String id,
  });

  /// Student: Remove Token
  @DELETE('/students/{id}/token')
  Future<DeleteStudentsIdTokenResponse> studentRemoveToken({
    @Path('id') required String id,
  });

  /// Student: Batch Token
  @POST('/students/token')
  Future<PostStudentsTokenResponse> studentBatchToken({
    @Body() required BatchTokenStudentRequest body,
  });

  /// Student: Refresh Guardian Token
  @GET('/students/{id}/token-guardian')
  Future<GetStudentsIdTokenGuardianResponse> studentRefreshTokenGuardian({
    @Path('id') required String id,
  });

  /// Student: Remove Guardian Token
  @DELETE('/students/{id}/token-guardian')
  Future<DeleteStudentsIdTokenGuardianResponse> studentRemoveTokenGuardian({
    @Path('id') required String id,
  });

  /// GuardianStudent: Batch Token
  @POST('/students/token-guardian')
  Future<PostStudentsTokenGuardianResponse> studentBatchTokenGuardian({
    @Body() required BatchTokenGuardianStudentRequest body,
  });

  /// Student: Destroy Interval
  @DELETE('/students/{id}/intervals/{interval}')
  Future<DeleteStudentsIdIntervalsIntervalResponse> studentDestroyInterval({
    @Path('id') required String id,
    @Path('interval') required String interval,
  });

  /// Student: Store Update Interval
  @POST('/students/{id}/intervals/{interval}')
  Future<PostStudentsIdIntervalsIntervalResponse> studentStoreUpdateInterval1({
    @Path('id') required String id,
    @Path('interval') required String interval,
    @Body() StoreUpdateIntervalStudentRequest? body,
  });

  /// Student: Store Update Interval
  @PUT('/students/{id}/intervals/{interval}')
  Future<PutStudentsIdIntervalsIntervalResponse> studentStoreUpdateInterval2({
    @Path('id') required String id,
    @Path('interval') required String interval,
    @Body() StoreUpdateIntervalStudentRequest? body,
  });

  /// [student] - The student ID.
  ///
  /// [guardian] - The guardian ID.
  @DELETE('/students/{student}/guardians/{guardian}')
  Future<DeleteStudentsStudentGuardiansGuardianResponse> studentRemoveGuardian({
    @Path('student') required int student,
    @Path('guardian') required int guardian,
  });

  /// Student: Restore
  @POST('/students/{id}/restore')
  Future<PostStudentsIdRestoreResponse> studentRestore({
    @Path('id') required String id,
  });

  /// Student: Restore Interval
  @POST('/interval_student/{id}/restore')
  Future<PostIntervalStudentIdRestoreResponse> studentRestoreInterval({
    @Path('id') required String id,
  });

  /// Student: Batch
  @POST('/students/batch')
  Future<PostStudentsBatchResponse> studentBatch({
    @Body() BatchStudentRequest? body,
  });

  /// Student: Store
  @POST('/students')
  Future<PostStudentsResponse> studentsStore({
    @Body() required StoreStudentRequest body,
  });

  /// Student: Index
  @GET('/students')
  Future<GetStudentsResponse> studentsIndex();

  /// Student: Update
  @PUT('/students/{id}')
  Future<PutStudentsIdResponse> studentsUpdate({
    @Path('id') required String id,
  });

  /// Student: Destroy
  @DELETE('/students/{id}')
  Future<void> studentsDestroy({
    @Path('id') required String id,
  });

  /// Student: Show
  @GET('/students/{id}')
  Future<GetStudentsIdResponse> studentsShow({
    @Path('id') required String id,
  });

  /// Student: Set Subject Calculation
  @POST('/students/{id}/subjects/{subject_id}/calculation')
  Future<PostStudentsIdSubjectsSubjectIdCalculationResponse> studentSetSubjectCalculation({
    @Path('id') required String id,
    @Path('subject_id') required String subjectId,
    @Body() required SetSubjectCalculationStudentRequest body,
  });

  /// Student: Remove User
  @DELETE('/students/{studentId}/user/{userId}')
  Future<DeleteStudentsStudentIdUserUserIdResponse> studentRemoveUser({
    @Path('studentId') required String studentId,
    @Path('userId') required String userId,
  });
}
