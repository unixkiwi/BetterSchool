// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table_time_lesson.dart';
import 'meta150.dart';

part 'get_time_table_time_lessons_id_response.g.dart';

@JsonSerializable()
class GetTimeTableTimeLessonsIdResponse {
  const GetTimeTableTimeLessonsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetTimeTableTimeLessonsIdResponse.fromJson(Map<String, Object?> json) => _$GetTimeTableTimeLessonsIdResponseFromJson(json);
  
  final TimeTableTimeLesson data;
  final Meta150 meta;

  Map<String, Object?> toJson() => _$GetTimeTableTimeLessonsIdResponseToJson(this);
}
