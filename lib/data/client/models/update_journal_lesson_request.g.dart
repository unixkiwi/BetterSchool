// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_journal_lesson_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateJournalLessonRequest _$UpdateJournalLessonRequestFromJson(
  Map<String, dynamic> json,
) => UpdateJournalLessonRequest(
  status: json['status'] == null
      ? null
      : UpdateJournalLessonRequestStatus.fromJson(json['status'] as String?),
  subjectId: (json['subject_id'] as num?)?.toInt(),
  statuses: (json['statuses'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  teacherIds: (json['teacher_ids'] as List<dynamic>?)
      ?.map((e) => (e as num?)?.toInt())
      .toList(),
  roomIds: (json['room_ids'] as List<dynamic>?)
      ?.map((e) => (e as num?)?.toInt())
      .toList(),
);

Map<String, dynamic> _$UpdateJournalLessonRequestToJson(
  UpdateJournalLessonRequest instance,
) => <String, dynamic>{
  'status': _$UpdateJournalLessonRequestStatusEnumMap[instance.status],
  'subject_id': instance.subjectId,
  'statuses': instance.statuses,
  'teacher_ids': instance.teacherIds,
  'room_ids': instance.roomIds,
};

const _$UpdateJournalLessonRequestStatusEnumMap = {
  UpdateJournalLessonRequestStatus.initial: 'initial',
  UpdateJournalLessonRequestStatus.planned: 'planned',
  UpdateJournalLessonRequestStatus.hold: 'hold',
  UpdateJournalLessonRequestStatus.canceled: 'canceled',
  UpdateJournalLessonRequestStatus.$unknown: r'$unknown',
};
