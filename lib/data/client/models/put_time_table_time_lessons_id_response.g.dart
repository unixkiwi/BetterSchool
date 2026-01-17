// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_time_table_time_lessons_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutTimeTableTimeLessonsIdResponse _$PutTimeTableTimeLessonsIdResponseFromJson(
  Map<String, dynamic> json,
) => PutTimeTableTimeLessonsIdResponse(
  data: TimeTableTimeLesson.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta149.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutTimeTableTimeLessonsIdResponseToJson(
  PutTimeTableTimeLessonsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
