// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_table_time_lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeTableTimeLesson _$TimeTableTimeLessonFromJson(Map<String, dynamic> json) =>
    TimeTableTimeLesson(
      id: json['id'] as String,
      nr: json['nr'] as String,
      to: json['to'] as String?,
      from: json['from'] as String?,
    );

Map<String, dynamic> _$TimeTableTimeLessonToJson(
  TimeTableTimeLesson instance,
) => <String, dynamic>{
  'id': instance.id,
  'nr': instance.nr,
  'to': instance.to,
  'from': instance.from,
};
