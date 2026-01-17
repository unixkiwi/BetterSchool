// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_time_table_time_lesson_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreTimeTableTimeLessonRequest _$StoreTimeTableTimeLessonRequestFromJson(
  Map<String, dynamic> json,
) => StoreTimeTableTimeLessonRequest(
  nr: json['nr'] as String,
  from: DateTime.parse(json['from'] as String),
  to: DateTime.parse(json['to'] as String),
  timeTableTimeId: (json['time_table_time_id'] as num).toInt(),
);

Map<String, dynamic> _$StoreTimeTableTimeLessonRequestToJson(
  StoreTimeTableTimeLessonRequest instance,
) => <String, dynamic>{
  'nr': instance.nr,
  'from': instance.from.toIso8601String(),
  'to': instance.to.toIso8601String(),
  'time_table_time_id': instance.timeTableTimeId,
};
