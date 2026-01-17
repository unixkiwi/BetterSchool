// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_final_certificate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreFinalCertificateRequest _$StoreFinalCertificateRequestFromJson(
  Map<String, dynamic> json,
) => StoreFinalCertificateRequest(
  studentId: json['student_id'] as String,
  yearId: json['year_id'] as String,
  certificateType: json['certificate_type'] as String?,
  certificateDate: json['certificate_date'] == null
      ? null
      : DateTime.parse(json['certificate_date'] as String),
  custom: (json['custom'] as List<dynamic>?)?.map((e) => e as String).toList(),
  yearIds: (json['year_ids'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$StoreFinalCertificateRequestToJson(
  StoreFinalCertificateRequest instance,
) => <String, dynamic>{
  'student_id': instance.studentId,
  'year_id': instance.yearId,
  'certificate_type': instance.certificateType,
  'certificate_date': instance.certificateDate?.toIso8601String(),
  'custom': instance.custom,
  'year_ids': instance.yearIds,
};
