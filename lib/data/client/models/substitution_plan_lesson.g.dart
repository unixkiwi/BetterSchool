// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substitution_plan_lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstitutionPlanLesson _$SubstitutionPlanLessonFromJson(
  Map<String, dynamic> json,
) => SubstitutionPlanLesson(
  id: (json['id'] as num).toInt(),
  nr: json['nr'] as String,
  status: json['status'] as String,
  notes: json['notes'] as List<dynamic>?,
  day: json['day'] == null
      ? null
      : SubstitutionPlanDay.fromJson(json['day'] as Map<String, dynamic>),
  subject: json['subject'] == null
      ? null
      : Subject.fromJson(json['subject'] as Map<String, dynamic>),
  group: json['group'] == null
      ? null
      : Group.fromJson(json['group'] as Map<String, dynamic>),
  teachers: (json['teachers'] as List<dynamic>?)
      ?.map((e) => Teacher.fromJson(e as Map<String, dynamic>))
      .toList(),
  rooms: (json['rooms'] as List<dynamic>?)
      ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SubstitutionPlanLessonToJson(
  SubstitutionPlanLesson instance,
) => <String, dynamic>{
  'id': instance.id,
  'nr': instance.nr,
  'status': instance.status,
  'notes': instance.notes,
  'day': instance.day,
  'subject': instance.subject,
  'group': instance.group,
  'teachers': instance.teachers,
  'rooms': instance.rooms,
};
