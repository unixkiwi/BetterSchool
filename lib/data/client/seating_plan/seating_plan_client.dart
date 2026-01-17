// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_seating_plans_response.dart';
import '../models/get_seating_plans_seating_plan_response.dart';
import '../models/post_seating_plans_response.dart';
import '../models/put_seating_plans_seating_plan_response.dart';

part 'seating_plan_client.g.dart';

@RestApi()
abstract class SeatingPlanClient {
  factory SeatingPlanClient(Dio dio, {String? baseUrl}) = _SeatingPlanClient;

  /// Seating Plan:.
  ///
  /// ⚠️ Cannot generate request documentation: method_exists(): Argument #1 ($object_or_class) must be of type object|string, array given.
  @POST('/seating-plans')
  Future<PostSeatingPlansResponse> seatingPlansStore();

  /// Seating Plan:
  @GET('/seating-plans')
  Future<GetSeatingPlansResponse> seatingPlansIndex();

  /// Seating Plan:.
  ///
  /// ⚠️ Cannot generate request documentation: method_exists(): Argument #1 ($object_or_class) must be of type object|string, array given.
  @PUT('/seating-plans/{seatingPlan}')
  Future<PutSeatingPlansSeatingPlanResponse> seatingPlansUpdate();

  /// Seating Plan:.
  ///
  /// [seatingPlan] - The seating plan ID.
  @DELETE('/seating-plans/{seatingPlan}')
  Future<void> seatingPlansDestroy({
    @Path('seatingPlan') required int seatingPlan,
  });

  /// Seating Plan:.
  ///
  /// [seatingPlan] - The seating plan ID.
  @GET('/seating-plans/{seatingPlan}')
  Future<GetSeatingPlansSeatingPlanResponse> seatingPlansShow({
    @Path('seatingPlan') required int seatingPlan,
  });
}
