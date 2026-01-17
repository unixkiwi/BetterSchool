// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_absences_absence_response.dart';
import '../models/get_absences_response.dart';
import '../models/post_absences_response.dart';
import '../models/put_absences_absence_response.dart';

part 'absence_client.g.dart';

@RestApi()
abstract class AbsenceClient {
  factory AbsenceClient(Dio dio, {String? baseUrl}) = _AbsenceClient;

  /// Absence: Store
  @POST('/absences')
  Future<PostAbsencesResponse> absencesStore();

  /// Absence: Index
  @GET('/absences')
  Future<GetAbsencesResponse> absencesIndex();

  /// Absence: Update.
  ///
  /// [absence] - The absence ID.
  @PUT('/absences/{absence}')
  Future<PutAbsencesAbsenceResponse> absencesUpdate({
    @Path('absence') required int absence,
  });

  /// Absence: Destroy.
  ///
  /// [absence] - The absence ID.
  @DELETE('/absences/{absence}')
  Future<void> absencesDestroy({
    @Path('absence') required int absence,
  });

  /// Absence: Show.
  ///
  /// [absence] - The absence ID.
  @GET('/absences/{absence}')
  Future<GetAbsencesAbsenceResponse> absencesShow({
    @Path('absence') required int absence,
  });
}
