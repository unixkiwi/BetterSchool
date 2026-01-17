// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'time_table_time_lesson.g.dart';

@JsonSerializable()
class TimeTableTimeLesson {
  const TimeTableTimeLesson({
    required this.id,
    required this.nr,
    required this.to,
    required this.from,
  });
  
  factory TimeTableTimeLesson.fromJson(Map<String, Object?> json) => _$TimeTableTimeLessonFromJson(json);
  
  final String id;
  final String nr;
  final String? to;
  final String? from;

  Map<String, Object?> toJson() => _$TimeTableTimeLessonToJson(this);
}
