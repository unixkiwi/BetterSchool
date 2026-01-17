// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'substitution_plan_lesson.dart';

part 'substitution_plan_day.g.dart';

@JsonSerializable()
class SubstitutionPlanDay {
  const SubstitutionPlanDay({
    required this.id,
    required this.date,
    required this.notes,
    this.lessons,
  });
  
  factory SubstitutionPlanDay.fromJson(Map<String, Object?> json) => _$SubstitutionPlanDayFromJson(json);
  
  final int id;
  final String date;
  final String notes;
  final List<SubstitutionPlanLesson>? lessons;

  Map<String, Object?> toJson() => _$SubstitutionPlanDayToJson(this);
}
