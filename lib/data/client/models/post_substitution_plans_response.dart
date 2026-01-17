// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'substitution_plan.dart';
import 'meta130.dart';

part 'post_substitution_plans_response.g.dart';

@JsonSerializable()
class PostSubstitutionPlansResponse {
  const PostSubstitutionPlansResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostSubstitutionPlansResponse.fromJson(Map<String, Object?> json) => _$PostSubstitutionPlansResponseFromJson(json);
  
  final SubstitutionPlan data;
  final Meta130 meta;

  Map<String, Object?> toJson() => _$PostSubstitutionPlansResponseToJson(this);
}
