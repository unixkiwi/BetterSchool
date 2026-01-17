// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_seating_plans_seating_plan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutSeatingPlansSeatingPlanResponse _$PutSeatingPlansSeatingPlanResponseFromJson(
  Map<String, dynamic> json,
) => PutSeatingPlansSeatingPlanResponse(
  data: SeatingPlan.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta110.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutSeatingPlansSeatingPlanResponseToJson(
  PutSeatingPlansSeatingPlanResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
