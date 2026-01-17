// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'substitution_plan_lesson.dart';

part 'get_substitution_plans_lessons_response.g.dart';

@JsonSerializable()
class GetSubstitutionPlansLessonsResponse {
  const GetSubstitutionPlansLessonsResponse({
    required this.data,
  });
  
  factory GetSubstitutionPlansLessonsResponse.fromJson(Map<String, Object?> json) => _$GetSubstitutionPlansLessonsResponseFromJson(json);
  
  final List<SubstitutionPlanLesson> data;

  Map<String, Object?> toJson() => _$GetSubstitutionPlansLessonsResponseToJson(this);
}
