// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_substitution_plans_days_date_response.dart';
import '../models/get_substitution_plans_days_response.dart';

part 'substitution_plan_day_client.g.dart';

@RestApi()
abstract class SubstitutionPlanDayClient {
  factory SubstitutionPlanDayClient(Dio dio, {String? baseUrl}) = _SubstitutionPlanDayClient;

  /// Substitution Plan Day: Index
  @GET('/substitution-plans/days')
  Future<GetSubstitutionPlansDaysResponse> substitutionPlanDayIndex();

  /// Substitution Plan Day: Show
  @GET('/substitution-plans/days/{date}')
  Future<GetSubstitutionPlansDaysDateResponse> substitutionPlanDayShow({
    @Path('date') required String date,
  });
}
