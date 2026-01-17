// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'substitution_plan_day.dart';

part 'get_substitution_plans_days_response.g.dart';

@JsonSerializable()
class GetSubstitutionPlansDaysResponse {
  const GetSubstitutionPlansDaysResponse({
    required this.data,
  });
  
  factory GetSubstitutionPlansDaysResponse.fromJson(Map<String, Object?> json) => _$GetSubstitutionPlansDaysResponseFromJson(json);
  
  final List<SubstitutionPlanDay> data;

  Map<String, Object?> toJson() => _$GetSubstitutionPlansDaysResponseToJson(this);
}
