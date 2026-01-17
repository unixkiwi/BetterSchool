// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_substitution_plans_id_response.dart';
import '../models/get_substitution_plans_response.dart';
import '../models/post_substitution_plans_response.dart';
import '../models/put_substitution_plans_id_response.dart';
import '../models/store_substitution_plan_request.dart';
import '../models/update_substitution_plan_request.dart';

part 'substitution_plan_client.g.dart';

@RestApi()
abstract class SubstitutionPlanClient {
  factory SubstitutionPlanClient(Dio dio, {String? baseUrl}) = _SubstitutionPlanClient;

  /// Substitution Plan: Index
  @GET('/substitution-plans')
  Future<GetSubstitutionPlansResponse> substitutionPlansIndex();

  /// Substitution Plan: Store
  @POST('/substitution-plans')
  Future<PostSubstitutionPlansResponse> substitutionPlansStore({
    @Body() required StoreSubstitutionPlanRequest body,
  });

  /// Substitution Plan: Show
  @GET('/substitution-plans/{id}')
  Future<GetSubstitutionPlansIdResponse> substitutionPlansShow({
    @Path('id') required String id,
  });

  /// Substitution Plan: Update
  @PUT('/substitution-plans/{id}')
  Future<PutSubstitutionPlansIdResponse> substitutionPlansUpdate({
    @Path('id') required String id,
    @Body() required UpdateSubstitutionPlanRequest body,
  });

  /// Substitution Plan: Destroy
  @DELETE('/substitution-plans/{id}')
  Future<void> substitutionPlansDestroy({
    @Path('id') required String id,
  });
}
