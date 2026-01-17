// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_substitution_plan_request.g.dart';

@JsonSerializable()
class UpdateSubstitutionPlanRequest {
  const UpdateSubstitutionPlanRequest({
    required this.name,
    required this.validFrom,
    required this.validTo,
  });
  
  factory UpdateSubstitutionPlanRequest.fromJson(Map<String, Object?> json) => _$UpdateSubstitutionPlanRequestFromJson(json);
  
  final String name;
  @JsonKey(name: 'valid_from')
  final DateTime validFrom;
  @JsonKey(name: 'valid_to')
  final DateTime validTo;

  Map<String, Object?> toJson() => _$UpdateSubstitutionPlanRequestToJson(this);
}
