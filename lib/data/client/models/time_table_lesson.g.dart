// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_table_lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeTableLesson _$TimeTableLessonFromJson(Map<String, dynamic> json) =>
    TimeTableLesson(
      id: (json['id'] as num).toInt(),
      weeks: json['weeks'] as List<dynamic>,
      weekday: (json['weekday'] as num).toInt(),
      nr: json['nr'] as String,
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

Map<String, dynamic> _$TimeTableLessonToJson(TimeTableLesson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weeks': instance.weeks,
      'weekday': instance.weekday,
      'nr': instance.nr,
      'subject': instance.subject,
      'group': instance.group,
      'teachers': instance.teachers,
      'rooms': instance.rooms,
    };
