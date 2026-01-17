// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta118.dart';

part 'put_students_id_intervals_interval_response.g.dart';

@JsonSerializable()
class PutStudentsIdIntervalsIntervalResponse {
  const PutStudentsIdIntervalsIntervalResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutStudentsIdIntervalsIntervalResponse.fromJson(Map<String, Object?> json) => _$PutStudentsIdIntervalsIntervalResponseFromJson(json);
  
  final Student data;
  final Meta118 meta;

  Map<String, Object?> toJson() => _$PutStudentsIdIntervalsIntervalResponseToJson(this);
}
