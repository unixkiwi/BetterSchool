// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Collection _$CollectionFromJson(Map<String, dynamic> json) => Collection(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String,
  weighting: (json['weighting'] as num).toInt(),
  name: json['name'] as String?,
  givenAt: json['given_at'] as String,
  visibleFrom: json['visible_from'] as String?,
  intervalId: (json['interval_id'] as num).toInt(),
  subjectId: (json['subject_id'] as num).toInt(),
  teacherId: (json['teacher_id'] as num).toInt(),
  interval: json['interval'] == null
      ? null
      : Interval.fromJson(json['interval'] as Map<String, dynamic>),
  group: json['group'] == null
      ? null
      : Group.fromJson(json['group'] as Map<String, dynamic>),
  subject: json['subject'] == null
      ? null
      : Subject.fromJson(json['subject'] as Map<String, dynamic>),
  teacher: json['teacher'] == null
      ? null
      : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
  grades: (json['grades'] as List<dynamic>?)
      ?.map((e) => Grade.fromJson(e as Map<String, dynamic>))
      .toList(),
  histories: (json['histories'] as List<dynamic>?)
      ?.map((e) => History.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CollectionToJson(Collection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'weighting': instance.weighting,
      'name': instance.name,
      'given_at': instance.givenAt,
      'visible_from': instance.visibleFrom,
      'interval_id': instance.intervalId,
      'subject_id': instance.subjectId,
      'teacher_id': instance.teacherId,
      'interval': instance.interval,
      'group': instance.group,
      'subject': instance.subject,
      'teacher': instance.teacher,
      'grades': instance.grades,
      'histories': instance.histories,
    };
