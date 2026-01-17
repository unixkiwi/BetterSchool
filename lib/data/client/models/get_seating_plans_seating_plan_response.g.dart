// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_seating_plans_seating_plan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSeatingPlansSeatingPlanResponse _$GetSeatingPlansSeatingPlanResponseFromJson(
  Map<String, dynamic> json,
) => GetSeatingPlansSeatingPlanResponse(
  data: SeatingPlan.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta111.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetSeatingPlansSeatingPlanResponseToJson(
  GetSeatingPlansSeatingPlanResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
