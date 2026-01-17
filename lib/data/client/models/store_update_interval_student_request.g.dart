// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_update_interval_student_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreUpdateIntervalStudentRequest _$StoreUpdateIntervalStudentRequestFromJson(
  Map<String, dynamic> json,
) => StoreUpdateIntervalStudentRequest(
  certificateType: json['certificate_type'] as String?,
  certificateDate: json['certificate_date'] == null
      ? null
      : DateTime.parse(json['certificate_date'] as String),
  custom: json['custom'] as String?,
  notPresentWithoutAbsenceCount:
      json['not_present_without_absence_count'] as String?,
  notPresentWithAbsenceCount: json['not_present_with_absence_count'] as String?,
);

Map<String, dynamic> _$StoreUpdateIntervalStudentRequestToJson(
  StoreUpdateIntervalStudentRequest instance,
) => <String, dynamic>{
  'certificate_type': instance.certificateType,
  'certificate_date': instance.certificateDate?.toIso8601String(),
  'custom': instance.custom,
  'not_present_without_absence_count': instance.notPresentWithoutAbsenceCount,
  'not_present_with_absence_count': instance.notPresentWithAbsenceCount,
};
