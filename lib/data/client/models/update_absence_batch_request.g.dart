// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_absence_batch_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAbsenceBatchRequest _$UpdateAbsenceBatchRequestFromJson(
  Map<String, dynamic> json,
) => UpdateAbsenceBatchRequest(
  from: DateTime.parse(json['from'] as String),
  to: DateTime.parse(json['to'] as String),
  typeId: (json['type_id'] as num).toInt(),
  studentIds: (json['student_ids'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  noteTeacher: json['note_teacher'] as String?,
  lessonIds: (json['lesson_ids'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  subjectIds: (json['subject_ids'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  verification: json['verification'] == null
      ? null
      : Verification2.fromJson(json['verification'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UpdateAbsenceBatchRequestToJson(
  UpdateAbsenceBatchRequest instance,
) => <String, dynamic>{
  'from': instance.from.toIso8601String(),
  'to': instance.to.toIso8601String(),
  'type_id': instance.typeId,
  'student_ids': instance.studentIds,
  'note_teacher': instance.noteTeacher,
  'lesson_ids': instance.lessonIds,
  'subject_ids': instance.subjectIds,
  'verification': instance.verification,
};
