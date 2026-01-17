// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_time_table_time_lessons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTimeTableTimeLessonsResponse _$GetTimeTableTimeLessonsResponseFromJson(
  Map<String, dynamic> json,
) => GetTimeTableTimeLessonsResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => TimeTableTimeLesson.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetTimeTableTimeLessonsResponseToJson(
  GetTimeTableTimeLessonsResponse instance,
) => <String, dynamic>{'data': instance.data};
