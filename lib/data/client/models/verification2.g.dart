// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Verification2 _$Verification2FromJson(Map<String, dynamic> json) =>
    Verification2(
      id: json['id'] as num?,
      confirmed: json['confirmed'] as bool?,
      localId: json['local_id'] as String?,
      note: json['note'] as String?,
      recordedAt: json['recorded_at'] == null
          ? null
          : DateTime.parse(json['recorded_at'] as String),
    );

Map<String, dynamic> _$Verification2ToJson(Verification2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'confirmed': instance.confirmed,
      'local_id': instance.localId,
      'note': instance.note,
      'recorded_at': instance.recordedAt?.toIso8601String(),
    };
