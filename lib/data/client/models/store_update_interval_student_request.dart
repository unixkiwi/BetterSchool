// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_update_interval_student_request.g.dart';

@JsonSerializable()
class StoreUpdateIntervalStudentRequest {
  const StoreUpdateIntervalStudentRequest({
    this.certificateType,
    this.certificateDate,
    this.custom,
    this.notPresentWithoutAbsenceCount,
    this.notPresentWithAbsenceCount,
  });
  
  factory StoreUpdateIntervalStudentRequest.fromJson(Map<String, Object?> json) => _$StoreUpdateIntervalStudentRequestFromJson(json);
  
  @JsonKey(name: 'certificate_type')
  final String? certificateType;
  @JsonKey(name: 'certificate_date')
  final DateTime? certificateDate;
  final String? custom;
  @JsonKey(name: 'not_present_without_absence_count')
  final String? notPresentWithoutAbsenceCount;
  @JsonKey(name: 'not_present_with_absence_count')
  final String? notPresentWithAbsenceCount;

  Map<String, Object?> toJson() => _$StoreUpdateIntervalStudentRequestToJson(this);
}
