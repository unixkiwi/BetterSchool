// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_final_certificate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchFinalCertificateRequest _$BatchFinalCertificateRequestFromJson(
  Map<String, dynamic> json,
) => BatchFinalCertificateRequest(
  importAction: ImportAction.fromJson(json['import_action'] as String),
  id: json['id'] as String?,
  yearId: json['year_id'] as String?,
  studentId: json['student_id'] as String?,
  certificateType: json['certificate_type'] as String?,
  certificateDate: json['certificate_date'] == null
      ? null
      : DateTime.parse(json['certificate_date'] as String),
  custom: (json['custom'] as List<dynamic>?)?.map((e) => e as String).toList(),
  yearIds: (json['year_ids'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$BatchFinalCertificateRequestToJson(
  BatchFinalCertificateRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'year_id': instance.yearId,
  'student_id': instance.studentId,
  'certificate_type': instance.certificateType,
  'certificate_date': instance.certificateDate?.toIso8601String(),
  'custom': instance.custom,
  'year_ids': instance.yearIds,
  'import_action': _$ImportActionEnumMap[instance.importAction]!,
};

const _$ImportActionEnumMap = {
  ImportAction.create: 'create',
  ImportAction.update: 'update',
  ImportAction.delete: 'delete',
  ImportAction.$unknown: r'$unknown',
};
