// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeTable _$TimeTableFromJson(Map<String, dynamic> json) => TimeTable(
  id: json['id'] as String,
  name: json['name'] as String,
  validFrom: json['valid_from'] as String,
  validTo: json['valid_to'] as String,
  weeks: json['weeks'] as String,
  noSchoolDates: json['no_school_dates'] as String,
  stundenplan24: json['stundenplan24'] as String?,
  lessons: (json['lessons'] as List<dynamic>?)
      ?.map((e) => TimeTableLesson.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TimeTableToJson(TimeTable instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'valid_from': instance.validFrom,
  'valid_to': instance.validTo,
  'stundenplan24': instance.stundenplan24,
  'weeks': instance.weeks,
  'no_school_dates': instance.noSchoolDates,
  'lessons': instance.lessons,
};
