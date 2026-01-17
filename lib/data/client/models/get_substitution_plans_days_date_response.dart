// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'substitution_plan_day.dart';
import 'meta133.dart';

part 'get_substitution_plans_days_date_response.g.dart';

@JsonSerializable()
class GetSubstitutionPlansDaysDateResponse {
  const GetSubstitutionPlansDaysDateResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetSubstitutionPlansDaysDateResponse.fromJson(Map<String, Object?> json) => _$GetSubstitutionPlansDaysDateResponseFromJson(json);
  
  final SubstitutionPlanDay data;
  final Meta133 meta;

  Map<String, Object?> toJson() => _$GetSubstitutionPlansDaysDateResponseToJson(this);
}
