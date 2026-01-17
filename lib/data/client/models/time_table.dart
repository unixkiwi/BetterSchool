// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table_lesson.dart';

part 'time_table.g.dart';

@JsonSerializable()
class TimeTable {
  const TimeTable({
    required this.id,
    required this.name,
    required this.validFrom,
    required this.validTo,
    required this.weeks,
    required this.noSchoolDates,
    this.stundenplan24,
    this.lessons,
  });
  
  factory TimeTable.fromJson(Map<String, Object?> json) => _$TimeTableFromJson(json);
  
  final String id;
  final String name;
  @JsonKey(name: 'valid_from')
  final String validFrom;
  @JsonKey(name: 'valid_to')
  final String validTo;
  final String? stundenplan24;
  final String weeks;
  @JsonKey(name: 'no_school_dates')
  final String noSchoolDates;
  final List<TimeTableLesson>? lessons;

  Map<String, Object?> toJson() => _$TimeTableToJson(this);
}
