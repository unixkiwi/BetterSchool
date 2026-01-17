// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'seating_plan.dart';
import 'meta111.dart';

part 'get_seating_plans_seating_plan_response.g.dart';

@JsonSerializable()
class GetSeatingPlansSeatingPlanResponse {
  const GetSeatingPlansSeatingPlanResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetSeatingPlansSeatingPlanResponse.fromJson(Map<String, Object?> json) => _$GetSeatingPlansSeatingPlanResponseFromJson(json);
  
  final SeatingPlan data;
  final Meta111 meta;

  Map<String, Object?> toJson() => _$GetSeatingPlansSeatingPlanResponseToJson(this);
}
