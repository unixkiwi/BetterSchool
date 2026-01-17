// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Verification _$VerificationFromJson(Map<String, dynamic> json) => Verification(
  confirmed: json['confirmed'] as bool?,
  localId: json['local_id'] as String?,
  note: json['note'] as String?,
  recordedAt: json['recorded_at'] == null
      ? null
      : DateTime.parse(json['recorded_at'] as String),
);

Map<String, dynamic> _$VerificationToJson(Verification instance) =>
    <String, dynamic>{
      'confirmed': instance.confirmed,
      'local_id': instance.localId,
      'note': instance.note,
      'recorded_at': instance.recordedAt?.toIso8601String(),
    };
