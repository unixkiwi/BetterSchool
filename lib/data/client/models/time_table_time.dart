// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table_time_lesson.dart';

part 'time_table_time.g.dart';

@JsonSerializable()
class TimeTableTime {
  const TimeTableTime({
    required this.id,
    required this.name,
    required this.type,
    required this.validFrom,
    required this.validTo,
    required this.defaultValue,
    required this.lessons,
  });
  
  factory TimeTableTime.fromJson(Map<String, Object?> json) => _$TimeTableTimeFromJson(json);
  
  final int id;
  final String name;
  final String type;
  @JsonKey(name: 'valid_from')
  final String validFrom;
  @JsonKey(name: 'valid_to')
  final String validTo;

  /// The name has been replaced because it contains a keyword. Original name: `default`.
  @JsonKey(name: 'default')
  final int defaultValue;
  final List<TimeTableTimeLesson> lessons;

  Map<String, Object?> toJson() => _$TimeTableTimeToJson(this);
}
