// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_absence_verification_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAbsenceVerificationRequest _$UpdateAbsenceVerificationRequestFromJson(
  Map<String, dynamic> json,
) => UpdateAbsenceVerificationRequest(
  localId: json['local_id'] as String?,
  note: json['note'] as String?,
  recordedAt: json['recorded_at'] == null
      ? null
      : DateTime.parse(json['recorded_at'] as String),
);

Map<String, dynamic> _$UpdateAbsenceVerificationRequestToJson(
  UpdateAbsenceVerificationRequest instance,
) => <String, dynamic>{
  'local_id': instance.localId,
  'note': instance.note,
  'recorded_at': instance.recordedAt?.toIso8601String(),
};
