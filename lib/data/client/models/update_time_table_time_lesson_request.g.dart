// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_time_table_time_lesson_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateTimeTableTimeLessonRequest _$UpdateTimeTableTimeLessonRequestFromJson(
  Map<String, dynamic> json,
) => UpdateTimeTableTimeLessonRequest(
  nr: json['nr'] as String,
  from: DateTime.parse(json['from'] as String),
  to: DateTime.parse(json['to'] as String),
);

Map<String, dynamic> _$UpdateTimeTableTimeLessonRequestToJson(
  UpdateTimeTableTimeLessonRequest instance,
) => <String, dynamic>{
  'nr': instance.nr,
  'from': instance.from.toIso8601String(),
  'to': instance.to.toIso8601String(),
};
