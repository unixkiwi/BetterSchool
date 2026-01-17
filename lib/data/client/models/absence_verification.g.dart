// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absence_verification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbsenceVerification _$AbsenceVerificationFromJson(Map<String, dynamic> json) =>
    AbsenceVerification(
      id: (json['id'] as num).toInt(),
      confirmed: json['confirmed'] as bool,
      localId: json['local_id'] as String?,
      recordedAt: json['recorded_at'] as String?,
      note: json['note'] as String?,
      teacher: json['teacher'] == null
          ? null
          : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
      absence: json['absence'] == null
          ? null
          : Absence.fromJson(json['absence'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AbsenceVerificationToJson(
  AbsenceVerification instance,
) => <String, dynamic>{
  'id': instance.id,
  'confirmed': instance.confirmed,
  'local_id': instance.localId,
  'note': instance.note,
  'recorded_at': instance.recordedAt,
  'teacher': instance.teacher,
  'absence': instance.absence,
};
