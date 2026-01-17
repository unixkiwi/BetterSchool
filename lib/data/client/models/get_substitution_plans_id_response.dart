// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'substitution_plan.dart';
import 'meta131.dart';

part 'get_substitution_plans_id_response.g.dart';

@JsonSerializable()
class GetSubstitutionPlansIdResponse {
  const GetSubstitutionPlansIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetSubstitutionPlansIdResponse.fromJson(Map<String, Object?> json) => _$GetSubstitutionPlansIdResponseFromJson(json);
  
  final SubstitutionPlan data;
  final Meta131 meta;

  Map<String, Object?> toJson() => _$GetSubstitutionPlansIdResponseToJson(this);
}
