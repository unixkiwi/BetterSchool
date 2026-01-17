// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'interval.dart';
import 'time_table_time.dart';

part 'level.g.dart';

@JsonSerializable()
class Level {
  const Level({
    required this.id,
    required this.name,
    required this.intervalType,
    required this.timeType,
    required this.bestGrade,
    required this.worstGrade,
    this.intervals,
    this.times,
  });
  
  factory Level.fromJson(Map<String, Object?> json) => _$LevelFromJson(json);
  
  final int id;
  final String name;
  @JsonKey(name: 'interval_type')
  final String intervalType;
  @JsonKey(name: 'time_type')
  final String timeType;
  @JsonKey(name: 'best_grade')
  final int? bestGrade;
  @JsonKey(name: 'worst_grade')
  final int? worstGrade;
  final List<Interval>? intervals;
  final List<TimeTableTime>? times;

  Map<String, Object?> toJson() => _$LevelToJson(this);
}
