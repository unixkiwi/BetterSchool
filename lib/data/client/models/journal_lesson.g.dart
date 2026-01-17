// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JournalLesson _$JournalLessonFromJson(Map<String, dynamic> json) =>
    JournalLesson(
      id: json['id'] as String,
      nr: json['nr'] as String,
      status: json['status'] as String,
      ids: json['ids'] as String?,
      nrs: json['nrs'] as String?,
      source: json['source'] as String?,
      times: (json['times'] as List<dynamic>?)
          ?.map((e) => TimeTableTimeLesson.fromJson(e as Map<String, dynamic>))
          .toList(),
      subject: json['subject'] == null
          ? null
          : Subject.fromJson(json['subject'] as Map<String, dynamic>),
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
          .toList(),
      statuses: (json['statuses'] as List<dynamic>?)
          ?.map((e) => JournalLessonStudent.fromJson(e as Map<String, dynamic>))
          .toList(),
      teachers: (json['teachers'] as List<dynamic>?)
          ?.map((e) => Teacher.fromJson(e as Map<String, dynamic>))
          .toList(),
      rooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
      notes: (json['notes'] as List<dynamic>?)
          ?.map((e) => JournalNote.fromJson(e as Map<String, dynamic>))
          .toList(),
      day: json['day'] == null
          ? null
          : JournalDay.fromJson(json['day'] as Map<String, dynamic>),
      time: json['time'] == null
          ? null
          : TimeTableTimeLesson.fromJson(json['time'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : Teacher.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JournalLessonToJson(JournalLesson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nr': instance.nr,
      'status': instance.status,
      'ids': instance.ids,
      'nrs': instance.nrs,
      'source': instance.source,
      'times': instance.times,
      'subject': instance.subject,
      'group': instance.group,
      'students': instance.students,
      'statuses': instance.statuses,
      'teachers': instance.teachers,
      'rooms': instance.rooms,
      'notes': instance.notes,
      'day': instance.day,
      'time': instance.time,
      'owner': instance.owner,
    };
