// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_time_table_time_lesson_request.g.dart';

@JsonSerializable()
class StoreTimeTableTimeLessonRequest {
  const StoreTimeTableTimeLessonRequest({
    required this.nr,
    required this.from,
    required this.to,
    required this.timeTableTimeId,
  });
  
  factory StoreTimeTableTimeLessonRequest.fromJson(Map<String, Object?> json) => _$StoreTimeTableTimeLessonRequestFromJson(json);
  
  final String nr;
  final DateTime from;
  final DateTime to;
  @JsonKey(name: 'time_table_time_id')
  final int timeTableTimeId;

  Map<String, Object?> toJson() => _$StoreTimeTableTimeLessonRequestToJson(this);
}
