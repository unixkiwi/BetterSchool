// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JournalDay _$JournalDayFromJson(Map<String, dynamic> json) => JournalDay(
  id: json['id'] as String,
  date: json['date'] as String,
  timeName: json['time_name'] as String,
  lessons: (json['lessons'] as List<dynamic>?)
      ?.map((e) => JournalLesson.fromJson(e as Map<String, dynamic>))
      .toList(),
  notes: (json['notes'] as List<dynamic>?)
      ?.map((e) => JournalNote.fromJson(e as Map<String, dynamic>))
      .toList(),
  week: json['week'] == null
      ? null
      : JournalWeek.fromJson(json['week'] as Map<String, dynamic>),
);

Map<String, dynamic> _$JournalDayToJson(JournalDay instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'time_name': instance.timeName,
      'lessons': instance.lessons,
      'notes': instance.notes,
      'week': instance.week,
    };
