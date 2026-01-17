// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'set_subject_calculation_student_request_calculation.dart';

part 'set_subject_calculation_student_request.g.dart';

@JsonSerializable()
class SetSubjectCalculationStudentRequest {
  const SetSubjectCalculationStudentRequest({
    required this.calculation,
    this.grade,
  });
  
  factory SetSubjectCalculationStudentRequest.fromJson(Map<String, Object?> json) => _$SetSubjectCalculationStudentRequestFromJson(json);
  
  final SetSubjectCalculationStudentRequestCalculation calculation;
  final String? grade;

  Map<String, Object?> toJson() => _$SetSubjectCalculationStudentRequestToJson(this);
}
