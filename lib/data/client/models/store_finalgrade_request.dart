// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_finalgrade_request_calculation_for.dart';

part 'store_finalgrade_request.g.dart';

@JsonSerializable()
class StoreFinalgradeRequest {
  const StoreFinalgradeRequest({
    required this.studentId,
    required this.subjectId,
    required this.intervalId,
    required this.calculationFor,
    this.value,
    this.calculationRule,
    this.calculationVerbal,
  });
  
  factory StoreFinalgradeRequest.fromJson(Map<String, Object?> json) => _$StoreFinalgradeRequestFromJson(json);
  
  final String? value;
  @JsonKey(name: 'student_id')
  final int studentId;
  @JsonKey(name: 'subject_id')
  final int subjectId;
  @JsonKey(name: 'interval_id')
  final int intervalId;
  @JsonKey(name: 'calculation_rule')
  final String? calculationRule;
  @JsonKey(name: 'calculation_verbal')
  final String? calculationVerbal;
  @JsonKey(name: 'calculation_for')
  final StoreFinalgradeRequestCalculationFor calculationFor;

  Map<String, Object?> toJson() => _$StoreFinalgradeRequestToJson(this);
}
