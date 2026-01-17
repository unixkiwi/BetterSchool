// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'substitution_plan.dart';
import 'meta132.dart';

part 'put_substitution_plans_id_response.g.dart';

@JsonSerializable()
class PutSubstitutionPlansIdResponse {
  const PutSubstitutionPlansIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutSubstitutionPlansIdResponse.fromJson(Map<String, Object?> json) => _$PutSubstitutionPlansIdResponseFromJson(json);
  
  final SubstitutionPlan data;
  final Meta132 meta;

  Map<String, Object?> toJson() => _$PutSubstitutionPlansIdResponseToJson(this);
}
