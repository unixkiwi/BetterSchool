// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table_time_lesson.dart';
import 'meta148.dart';

part 'post_time_table_time_lessons_response.g.dart';

@JsonSerializable()
class PostTimeTableTimeLessonsResponse {
  const PostTimeTableTimeLessonsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostTimeTableTimeLessonsResponse.fromJson(Map<String, Object?> json) => _$PostTimeTableTimeLessonsResponseFromJson(json);
  
  final TimeTableTimeLesson data;
  final Meta148 meta;

  Map<String, Object?> toJson() => _$PostTimeTableTimeLessonsResponseToJson(this);
}
