// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'report.g.dart';

@JsonSerializable()
class Report {
  const Report({
    required this.id,
    required this.name,
    required this.forValue,
    required this.range,
    required this.model,
    required this.filterResult,
    required this.groupBy,
    required this.aggregateType,
    required this.teacherId,
  });
  
  factory Report.fromJson(Map<String, Object?> json) => _$ReportFromJson(json);
  
  final int id;
  final String name;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final String forValue;
  final String range;
  final String model;
  @JsonKey(name: 'filter_result')
  final List<dynamic>? filterResult;
  @JsonKey(name: 'group_by')
  final String? groupBy;
  @JsonKey(name: 'aggregate_type')
  final String aggregateType;
  @JsonKey(name: 'teacher_id')
  final int? teacherId;

  Map<String, Object?> toJson() => _$ReportToJson(this);
}
