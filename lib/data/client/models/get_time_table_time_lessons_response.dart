// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table_time_lesson.dart';

part 'get_time_table_time_lessons_response.g.dart';

@JsonSerializable()
class GetTimeTableTimeLessonsResponse {
  const GetTimeTableTimeLessonsResponse({
    required this.data,
  });
  
  factory GetTimeTableTimeLessonsResponse.fromJson(Map<String, Object?> json) => _$GetTimeTableTimeLessonsResponseFromJson(json);
  
  final List<TimeTableTimeLesson> data;

  Map<String, Object?> toJson() => _$GetTimeTableTimeLessonsResponseToJson(this);
}
