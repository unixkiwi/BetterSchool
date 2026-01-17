// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_time_table_time_lessons_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTimeTableTimeLessonsIdResponse _$GetTimeTableTimeLessonsIdResponseFromJson(
  Map<String, dynamic> json,
) => GetTimeTableTimeLessonsIdResponse(
  data: TimeTableTimeLesson.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta150.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetTimeTableTimeLessonsIdResponseToJson(
  GetTimeTableTimeLessonsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
