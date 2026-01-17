// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Level _$LevelFromJson(Map<String, dynamic> json) => Level(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  intervalType: json['interval_type'] as String,
  timeType: json['time_type'] as String,
  bestGrade: (json['best_grade'] as num?)?.toInt(),
  worstGrade: (json['worst_grade'] as num?)?.toInt(),
  intervals: (json['intervals'] as List<dynamic>?)
      ?.map((e) => Interval.fromJson(e as Map<String, dynamic>))
      .toList(),
  times: (json['times'] as List<dynamic>?)
      ?.map((e) => TimeTableTime.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LevelToJson(Level instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'interval_type': instance.intervalType,
  'time_type': instance.timeType,
  'best_grade': instance.bestGrade,
  'worst_grade': instance.worstGrade,
  'intervals': instance.intervals,
  'times': instance.times,
};
