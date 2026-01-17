// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'meta116.dart';

part 'delete_students_id_intervals_interval_response.g.dart';

@JsonSerializable()
class DeleteStudentsIdIntervalsIntervalResponse {
  const DeleteStudentsIdIntervalsIntervalResponse({
    required this.data,
    required this.meta,
  });
  
  factory DeleteStudentsIdIntervalsIntervalResponse.fromJson(Map<String, Object?> json) => _$DeleteStudentsIdIntervalsIntervalResponseFromJson(json);
  
  final Student data;
  final Meta116 meta;

  Map<String, Object?> toJson() => _$DeleteStudentsIdIntervalsIntervalResponseToJson(this);
}
