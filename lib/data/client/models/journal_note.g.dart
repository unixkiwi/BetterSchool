// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JournalNote _$JournalNoteFromJson(Map<String, dynamic> json) => JournalNote(
  id: json['id'] as String,
  description: json['description'] as String,
  forValue: json['for'] as String,
  notableType: json['notable_type'] as String,
  ids: json['ids'] as String?,
  type: json['type'] == null
      ? null
      : JournalNoteType.fromJson(json['type'] as Map<String, dynamic>),
  group: json['group'] == null
      ? null
      : Group.fromJson(json['group'] as Map<String, dynamic>),
  source: json['source'] as String?,
  notable: json['notable'] == null
      ? null
      : JournalLessonStudent.fromJson(json['notable'] as Map<String, dynamic>),
  teacher: json['teacher'] == null
      ? null
      : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
);

Map<String, dynamic> _$JournalNoteToJson(JournalNote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ids': instance.ids,
      'description': instance.description,
      'for': instance.forValue,
      'type': instance.type,
      'group': instance.group,
      'source': instance.source,
      'notable': instance.notable,
      'teacher': instance.teacher,
      'notable_type': instance.notableType,
    };
