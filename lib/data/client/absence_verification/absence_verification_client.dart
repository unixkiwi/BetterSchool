// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_absences_verifications_id_response.dart';
import '../models/post_absences_absence_verifications_response.dart';
import '../models/put_absences_verifications_verification_response.dart';
import '../models/store_absence_verification_request.dart';
import '../models/update_absence_verification_request.dart';

part 'absence_verification_client.g.dart';

@RestApi()
abstract class AbsenceVerificationClient {
  factory AbsenceVerificationClient(Dio dio, {String? baseUrl}) = _AbsenceVerificationClient;

  /// AbsenceVerification: Store.
  ///
  /// [absence] - The absence ID.
  @POST('/absences/{absence}/verifications')
  Future<PostAbsencesAbsenceVerificationsResponse> absencesVerificationsStore({
    @Path('absence') required int absence,
    @Body() StoreAbsenceVerificationRequest? body,
  });

  /// AbsenceVerification: Show
  @GET('/absences/verifications/{id}')
  Future<GetAbsencesVerificationsIdResponse> verificationsShow({
    @Path('id') required String id,
  });

  /// AbsenceVerification: Update
  @PUT('/absences/verifications/{verification}')
  Future<PutAbsencesVerificationsVerificationResponse> verificationsUpdate({
    @Path('verification') required String verification,
    @Body() UpdateAbsenceVerificationRequest? body,
  });

  /// AbsenceVerification: Destroy
  @DELETE('/absences/verifications/{verification}')
  Future<void> verificationsDestroy({
    @Path('verification') required String verification,
  });
}
