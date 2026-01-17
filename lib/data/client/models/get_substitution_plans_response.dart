// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'substitution_plan.dart';

part 'get_substitution_plans_response.g.dart';

@JsonSerializable()
class GetSubstitutionPlansResponse {
  const GetSubstitutionPlansResponse({
    required this.data,
  });
  
  factory GetSubstitutionPlansResponse.fromJson(Map<String, Object?> json) => _$GetSubstitutionPlansResponseFromJson(json);
  
  final List<SubstitutionPlan> data;

  Map<String, Object?> toJson() => _$GetSubstitutionPlansResponseToJson(this);
}
