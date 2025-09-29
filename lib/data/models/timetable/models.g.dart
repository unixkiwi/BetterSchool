// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchoolWeekModel _$SchoolWeekModelFromJson(Map<String, dynamic> json) =>
    SchoolWeekModel(
      days: (json['days'] as List<dynamic>?)
          ?.map((e) => SchoolDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      nr: fromJsonNR(json['nr']),
    );

Map<String, dynamic> _$SchoolWeekModelToJson(SchoolWeekModel instance) =>
    <String, dynamic>{'nr': toJsonNR(instance.nr), 'days': instance.days};

SchoolDayModel _$SchoolDayModelFromJson(Map<String, dynamic> json) =>
    SchoolDayModel(
      id: json['id'] as String?,
      date: json['date'] == null
          ? null
          : DateTime.parse(json['date'] as String),
      lessons: (json['lessons'] as List<dynamic>?)
          ?.map((e) => LessonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SchoolDayModelToJson(SchoolDayModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'lessons': instance.lessons,
    };

LessonModel _$LessonModelFromJson(Map<String, dynamic> json) => LessonModel(
  id: (json['id'] as num?)?.toInt(),
  nr: (json['nr'] as num?)?.toInt(),
  status: $enumDecodeNullable(_$LessonStatusEnumMap, json['status']),
  subject: json['subject'] == null
      ? null
      : SubjectModel.fromJson(json['subject'] as Map<String, dynamic>),
  rooms: (json['rooms'] as List<dynamic>?)
      ?.map((e) => RoomModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  teachers: (json['teachers'] as List<dynamic>?)
      ?.map((e) => TeacherModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  group: GroupModel.fromJson(json['group'] as Map<String, dynamic>),
  notes: (json['notes'] as List<dynamic>)
      .map((e) => NoteModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LessonModelToJson(LessonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nr': instance.nr,
      'status': _$LessonStatusEnumMap[instance.status],
      'subject': instance.subject,
      'rooms': instance.rooms,
      'teachers': instance.teachers,
      'group': instance.group,
      'notes': instance.notes,
    };

const _$LessonStatusEnumMap = {
  LessonStatus.initial: 'initial',
  LessonStatus.planned: 'planned',
  LessonStatus.hold: 'hold',
  LessonStatus.cancelled: 'canceled',
};

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) =>
    RoomModel(local_id: json['local_id'] as String?);

Map<String, dynamic> _$RoomModelToJson(RoomModel instance) => <String, dynamic>{
  'local_id': instance.local_id,
};

NoteModelType _$NoteModelTypeFromJson(Map<String, dynamic> json) =>
    NoteModelType(
      name: json['name'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NoteModelTypeToJson(NoteModelType instance) =>
    <String, dynamic>{'name': instance.name, 'id': instance.id};

NoteModel _$NoteModelFromJson(Map<String, dynamic> json) => NoteModel(
  description: json['description'] as String?,
  type: json['type'] == null
      ? null
      : NoteModelType.fromJson(json['type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NoteModelToJson(NoteModel instance) => <String, dynamic>{
  'description': instance.description,
  'type': instance.type,
};
