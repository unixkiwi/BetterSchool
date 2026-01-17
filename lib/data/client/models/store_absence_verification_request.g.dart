// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_absence_verification_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreAbsenceVerificationRequest _$StoreAbsenceVerificationRequestFromJson(
  Map<String, dynamic> json,
) => StoreAbsenceVerificationRequest(
  localId: json['local_id'] as String?,
  note: json['note'] as String?,
  recordedAt: json['recorded_at'] == null
      ? null
      : DateTime.parse(json['recorded_at'] as String),
);

Map<String, dynamic> _$StoreAbsenceVerificationRequestToJson(
  StoreAbsenceVerificationRequest instance,
) => <String, dynamic>{
  'local_id': instance.localId,
  'note': instance.note,
  'recorded_at': instance.recordedAt?.toIso8601String(),
};
