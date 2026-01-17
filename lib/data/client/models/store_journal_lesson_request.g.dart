// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_journal_lesson_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreJournalLessonRequest _$StoreJournalLessonRequestFromJson(
  Map<String, dynamic> json,
) => StoreJournalLessonRequest(
  nr: json['nr'] as String,
  groupId: (json['group_id'] as num).toInt(),
  dayId: json['day_id'] == null
      ? null
      : DateTime.parse(json['day_id'] as String),
  journalDayId: json['journal_day_id'] == null
      ? null
      : DateTime.parse(json['journal_day_id'] as String),
  status: json['status'] == null
      ? null
      : StoreJournalLessonRequestStatus.fromJson(json['status'] as String?),
  subjectId: (json['subject_id'] as num?)?.toInt(),
  statuses: (json['statuses'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  description: json['description'] as String?,
  forEnum: json['for'] == null
      ? null
      : StoreJournalLessonRequestForEnum.fromJson(json['for'] as String),
  typeId: (json['type_id'] as num?)?.toInt(),
  teacherIds: (json['teacher_ids'] as List<dynamic>?)
      ?.map((e) => (e as num?)?.toInt())
      .toList(),
  roomIds: (json['room_ids'] as List<dynamic>?)
      ?.map((e) => (e as num?)?.toInt())
      .toList(),
  note: json['note'] == null
      ? null
      : Note.fromJson(json['note'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StoreJournalLessonRequestToJson(
  StoreJournalLessonRequest instance,
) => <String, dynamic>{
  'nr': instance.nr,
  'day_id': instance.dayId?.toIso8601String(),
  'journal_day_id': instance.journalDayId?.toIso8601String(),
  'status': _$StoreJournalLessonRequestStatusEnumMap[instance.status],
  'group_id': instance.groupId,
  'subject_id': instance.subjectId,
  'statuses': instance.statuses,
  'description': instance.description,
  'for': _$StoreJournalLessonRequestForEnumEnumMap[instance.forEnum],
  'type_id': instance.typeId,
  'teacher_ids': instance.teacherIds,
  'room_ids': instance.roomIds,
  'note': instance.note,
};

const _$StoreJournalLessonRequestStatusEnumMap = {
  StoreJournalLessonRequestStatus.initial: 'initial',
  StoreJournalLessonRequestStatus.planned: 'planned',
  StoreJournalLessonRequestStatus.hold: 'hold',
  StoreJournalLessonRequestStatus.canceled: 'canceled',
  StoreJournalLessonRequestStatus.$unknown: r'$unknown',
};

const _$StoreJournalLessonRequestForEnumEnumMap = {
  StoreJournalLessonRequestForEnum.student: 'student',
  StoreJournalLessonRequestForEnum.guardian: 'guardian',
  StoreJournalLessonRequestForEnum.teacher: 'teacher',
  StoreJournalLessonRequestForEnum.management: 'management',
  StoreJournalLessonRequestForEnum.self: 'self',
  StoreJournalLessonRequestForEnum.$unknown: r'$unknown',
};
