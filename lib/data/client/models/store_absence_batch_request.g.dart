// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_absence_batch_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreAbsenceBatchRequest _$StoreAbsenceBatchRequestFromJson(
  Map<String, dynamic> json,
) => StoreAbsenceBatchRequest(
  from: DateTime.parse(json['from'] as String),
  to: DateTime.parse(json['to'] as String),
  typeId: (json['type_id'] as num).toInt(),
  studentIds: (json['student_ids'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  noteTeacher: json['note_teacher'] as String?,
  recordedAt: json['recorded_at'] == null
      ? null
      : DateTime.parse(json['recorded_at'] as String),
  lessonIds: (json['lesson_ids'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  subjectIds: (json['subject_ids'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  verification: json['verification'] == null
      ? null
      : Verification.fromJson(json['verification'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StoreAbsenceBatchRequestToJson(
  StoreAbsenceBatchRequest instance,
) => <String, dynamic>{
  'from': instance.from.toIso8601String(),
  'to': instance.to.toIso8601String(),
  'type_id': instance.typeId,
  'student_ids': instance.studentIds,
  'note_teacher': instance.noteTeacher,
  'recorded_at': instance.recordedAt?.toIso8601String(),
  'lesson_ids': instance.lessonIds,
  'subject_ids': instance.subjectIds,
  'verification': instance.verification,
};
