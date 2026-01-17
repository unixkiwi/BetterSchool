// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_week.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JournalWeek _$JournalWeekFromJson(Map<String, dynamic> json) => JournalWeek(
  id: json['id'] as String,
  calendarYear: (json['calendar_year'] as num).toInt(),
  nr: (json['nr'] as num).toInt(),
  yearId: json['year_id'] as String,
  days: (json['days'] as List<dynamic>?)
      ?.map((e) => JournalDay.fromJson(e as Map<String, dynamic>))
      .toList(),
  notes: (json['notes'] as List<dynamic>?)
      ?.map((e) => JournalNote.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$JournalWeekToJson(JournalWeek instance) =>
    <String, dynamic>{
      'id': instance.id,
      'calendar_year': instance.calendarYear,
      'nr': instance.nr,
      'year_id': instance.yearId,
      'days': instance.days,
      'notes': instance.notes,
    };
