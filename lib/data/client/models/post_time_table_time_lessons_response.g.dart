// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_time_table_time_lessons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostTimeTableTimeLessonsResponse _$PostTimeTableTimeLessonsResponseFromJson(
  Map<String, dynamic> json,
) => PostTimeTableTimeLessonsResponse(
  data: TimeTableTimeLesson.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta148.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostTimeTableTimeLessonsResponseToJson(
  PostTimeTableTimeLessonsResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
