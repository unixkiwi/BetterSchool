// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'substitution_plan_day.dart';

part 'substitution_plan.g.dart';

@JsonSerializable()
class SubstitutionPlan {
  const SubstitutionPlan({
    required this.id,
    required this.name,
    this.validFrom,
    this.validTo,
    this.stundenplan24,
    this.days,
  });
  
  factory SubstitutionPlan.fromJson(Map<String, Object?> json) => _$SubstitutionPlanFromJson(json);
  
  final String id;
  final String name;
  @JsonKey(name: 'valid_from')
  final String? validFrom;
  @JsonKey(name: 'valid_to')
  final String? validTo;
  final String? stundenplan24;
  final List<SubstitutionPlanDay>? days;

  Map<String, Object?> toJson() => _$SubstitutionPlanToJson(this);
}
