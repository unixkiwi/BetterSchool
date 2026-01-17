// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_certificate_grades_id_response.dart';
import '../models/get_certificate_grades_response.dart';
import '../models/post_certificate_grades_certificate_grade_id_restore_response.dart';
import '../models/post_certificate_grades_response.dart';
import '../models/put_certificate_grades_certificate_grade_response.dart';
import '../models/store_certificate_grade_request.dart';
import '../models/update_certificate_grade_request.dart';

part 'certificate_grade_client.g.dart';

@RestApi()
abstract class CertificateGradeClient {
  factory CertificateGradeClient(Dio dio, {String? baseUrl}) = _CertificateGradeClient;

  @POST('/certificate-grades/{certificateGradeId}/restore')
  Future<PostCertificateGradesCertificateGradeIdRestoreResponse> certificateGradeRestore({
    @Path('certificateGradeId') required String certificateGradeId,
  });

  /// Display a listing of the resource
  @GET('/certificate-grades')
  Future<GetCertificateGradesResponse> certificateGradesIndex();

  /// Store a newly created resource in storage
  @POST('/certificate-grades')
  Future<PostCertificateGradesResponse> certificateGradesStore({
    @Body() required StoreCertificateGradeRequest body,
  });

  /// Display the specified resource
  @GET('/certificate-grades/{id}')
  Future<GetCertificateGradesIdResponse> certificateGradesShow({
    @Path('id') required String id,
  });

  /// Update the specified resource in storage.
  ///
  /// [certificateGrade] - The certificate grade ID.
  @PUT('/certificate-grades/{certificateGrade}')
  Future<PutCertificateGradesCertificateGradeResponse> certificateGradesUpdate({
    @Path('certificateGrade') required int certificateGrade,
    @Body() UpdateCertificateGradeRequest? body,
  });

  /// Remove the specified resource from storage.
  ///
  /// [certificateGrade] - The certificate grade ID.
  @DELETE('/certificate-grades/{certificateGrade}')
  Future<void> certificateGradesDestroy({
    @Path('certificateGrade') required int certificateGrade,
  });
}
