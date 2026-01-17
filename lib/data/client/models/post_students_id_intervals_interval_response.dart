// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta117.dart';

part 'post_students_id_intervals_interval_response.g.dart';

@JsonSerializable()
class PostStudentsIdIntervalsIntervalResponse {
  const PostStudentsIdIntervalsIntervalResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostStudentsIdIntervalsIntervalResponse.fromJson(Map<String, Object?> json) => _$PostStudentsIdIntervalsIntervalResponseFromJson(json);
  
  final Student data;
  final Meta117 meta;

  Map<String, Object?> toJson() => _$PostStudentsIdIntervalsIntervalResponseToJson(this);
}
