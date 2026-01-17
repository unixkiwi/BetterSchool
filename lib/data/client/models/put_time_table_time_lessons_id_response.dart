// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table_time_lesson.dart';
import 'meta149.dart';

part 'put_time_table_time_lessons_id_response.g.dart';

@JsonSerializable()
class PutTimeTableTimeLessonsIdResponse {
  const PutTimeTableTimeLessonsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutTimeTableTimeLessonsIdResponse.fromJson(Map<String, Object?> json) => _$PutTimeTableTimeLessonsIdResponseFromJson(json);
  
  final TimeTableTimeLesson data;
  final Meta149 meta;

  Map<String, Object?> toJson() => _$PutTimeTableTimeLessonsIdResponseToJson(this);
}
