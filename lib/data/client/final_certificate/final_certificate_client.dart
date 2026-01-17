// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/batch_final_certificate_request.dart';
import '../models/get_final_certificates_id_response.dart';
import '../models/get_final_certificates_response.dart';
import '../models/post_final_certificates_batch_response.dart';
import '../models/post_final_certificates_id_restore_response.dart';
import '../models/post_final_certificates_response.dart';
import '../models/put_final_certificates_final_certificate_response.dart';
import '../models/store_final_certificate_request.dart';
import '../models/update_final_certificate_request.dart';

part 'final_certificate_client.g.dart';

@RestApi()
abstract class FinalCertificateClient {
  factory FinalCertificateClient(Dio dio, {String? baseUrl}) = _FinalCertificateClient;

  /// Restore a soft deleted resource in storage
  @POST('/final-certificates/{id}/restore')
  Future<PostFinalCertificatesIdRestoreResponse> finalCertificateRestore({
    @Path('id') required String id,
  });

  /// Updates/Stores/Deletes multiple models at once
  @POST('/final-certificates/batch')
  Future<PostFinalCertificatesBatchResponse> finalCertificateBatch({
    @Body() BatchFinalCertificateRequest? body,
  });

  /// Display a listing of the resource
  @GET('/final-certificates')
  Future<GetFinalCertificatesResponse> finalCertificatesIndex();

  /// Store a newly created resource in storage
  @POST('/final-certificates')
  Future<PostFinalCertificatesResponse> finalCertificatesStore({
    @Body() required StoreFinalCertificateRequest body,
  });

  /// Display the specified resource
  @GET('/final-certificates/{id}')
  Future<GetFinalCertificatesIdResponse> finalCertificatesShow({
    @Path('id') required String id,
  });

  /// Update the specified resource in storage.
  ///
  /// [finalCertificate] - The final certificate ID.
  @PUT('/final-certificates/{finalCertificate}')
  Future<PutFinalCertificatesFinalCertificateResponse> finalCertificatesUpdate({
    @Path('finalCertificate') required int finalCertificate,
    @Body() UpdateFinalCertificateRequest? body,
  });

  /// Remove the specified resource from storage.
  ///
  /// [finalCertificate] - The final certificate ID.
  @DELETE('/final-certificates/{finalCertificate}')
  Future<void> finalCertificatesDestroy({
    @Path('finalCertificate') required int finalCertificate,
  });
}
