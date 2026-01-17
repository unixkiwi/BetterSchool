// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'update_finalgrade_request_calculation_for.dart';

part 'update_finalgrade_request.g.dart';

@JsonSerializable()
class UpdateFinalgradeRequest {
  const UpdateFinalgradeRequest({
    this.value,
    this.calculationRule,
    this.calculationVerbal,
    this.calculationFor,
  });
  
  factory UpdateFinalgradeRequest.fromJson(Map<String, Object?> json) => _$UpdateFinalgradeRequestFromJson(json);
  
  final String? value;
  @JsonKey(name: 'calculation_rule')
  final String? calculationRule;
  @JsonKey(name: 'calculation_verbal')
  final String? calculationVerbal;
  @JsonKey(name: 'calculation_for')
  final UpdateFinalgradeRequestCalculationFor? calculationFor;

  Map<String, Object?> toJson() => _$UpdateFinalgradeRequestToJson(this);
}
