// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'seating_plan.dart';
import 'meta110.dart';

part 'put_seating_plans_seating_plan_response.g.dart';

@JsonSerializable()
class PutSeatingPlansSeatingPlanResponse {
  const PutSeatingPlansSeatingPlanResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutSeatingPlansSeatingPlanResponse.fromJson(Map<String, Object?> json) => _$PutSeatingPlansSeatingPlanResponseFromJson(json);
  
  final SeatingPlan data;
  final Meta110 meta;

  Map<String, Object?> toJson() => _$PutSeatingPlansSeatingPlanResponseToJson(this);
}
