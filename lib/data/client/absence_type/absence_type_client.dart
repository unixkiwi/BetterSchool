// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_types_absence_id_response.dart';
import '../models/get_types_absence_response.dart';
import '../models/post_types_absence_response.dart';
import '../models/put_types_absence_id_response.dart';
import '../models/store_absence_type_request.dart';
import '../models/update_absence_type_request.dart';

part 'absence_type_client.g.dart';

@RestApi()
abstract class AbsenceTypeClient {
  factory AbsenceTypeClient(Dio dio, {String? baseUrl}) = _AbsenceTypeClient;

  /// AbsenceType: Store
  @POST('/types/absence')
  Future<PostTypesAbsenceResponse> absenceStore({
    @Body() required StoreAbsenceTypeRequest body,
  });

  /// AbsenceType: Index
  @GET('/types/absence')
  Future<GetTypesAbsenceResponse> absenceTypeIndex();

  /// AbsenceType: Show
  @GET('/types/absence/{id}')
  Future<GetTypesAbsenceIdResponse> absenceShow({
    @Path('id') required String id,
  });

  /// AbsenceType: Update
  @PUT('/types/absence/{id}')
  Future<PutTypesAbsenceIdResponse> absenceUpdate({
    @Path('id') required String id,
    @Body() required UpdateAbsenceTypeRequest body,
  });

  /// AbsenceType: Destroy
  @DELETE('/types/absence/{id}')
  Future<void> absenceDestroy({
    @Path('id') required String id,
  });
}
