// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_grades_id_response.dart';
import '../models/get_grades_response.dart';
import '../models/post_grades_id_restore_response.dart';
import '../models/post_grades_response.dart';
import '../models/put_grades_id_response.dart';
import '../models/store_grade_request.dart';
import '../models/update_grade_request.dart';

part 'grade_client.g.dart';

@RestApi()
abstract class GradeClient {
  factory GradeClient(Dio dio, {String? baseUrl}) = _GradeClient;

  /// Grade: Restore
  @POST('/grades/{id}/restore')
  Future<PostGradesIdRestoreResponse> gradeRestore({
    @Path('id') required String id,
  });

  /// Grade: Store
  @POST('/grades')
  Future<PostGradesResponse> gradesStore({
    @Body() required StoreGradeRequest body,
  });

  /// Grade: Index
  @GET('/grades')
  Future<GetGradesResponse> gradesIndex();

  /// Grade: Update
  @PUT('/grades/{id}')
  Future<PutGradesIdResponse> gradesUpdate({
    @Path('id') required String id,
    @Body() required UpdateGradeRequest body,
  });

  /// Grade: Destroy
  @DELETE('/grades/{id}')
  Future<void> gradesDestroy({
    @Path('id') required String id,
  });

  /// Grade: Show
  @GET('/grades/{id}')
  Future<GetGradesIdResponse> gradesShow({
    @Path('id') required String id,
  });
}
