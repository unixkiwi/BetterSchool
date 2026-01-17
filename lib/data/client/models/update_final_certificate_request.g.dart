// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_final_certificate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateFinalCertificateRequest _$UpdateFinalCertificateRequestFromJson(
  Map<String, dynamic> json,
) => UpdateFinalCertificateRequest(
  certificateType: json['certificate_type'] as String?,
  certificateDate: json['certificate_date'] == null
      ? null
      : DateTime.parse(json['certificate_date'] as String),
  custom: (json['custom'] as List<dynamic>?)?.map((e) => e as String).toList(),
  yearIds: (json['year_ids'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$UpdateFinalCertificateRequestToJson(
  UpdateFinalCertificateRequest instance,
) => <String, dynamic>{
  'certificate_type': instance.certificateType,
  'certificate_date': instance.certificateDate?.toIso8601String(),
  'custom': instance.custom,
  'year_ids': instance.yearIds,
};
