// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_time_table_time_lesson_request.g.dart';

@JsonSerializable()
class UpdateTimeTableTimeLessonRequest {
  const UpdateTimeTableTimeLessonRequest({
    required this.nr,
    required this.from,
    required this.to,
  });
  
  factory UpdateTimeTableTimeLessonRequest.fromJson(Map<String, Object?> json) => _$UpdateTimeTableTimeLessonRequestFromJson(json);
  
  final String nr;
  final DateTime from;
  final DateTime to;

  Map<String, Object?> toJson() => _$UpdateTimeTableTimeLessonRequestToJson(this);
}
