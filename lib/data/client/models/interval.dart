// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'year.dart';

part 'interval.g.dart';

@JsonSerializable()
class Interval {
  const Interval({
    required this.id,
    required this.name,
    required this.type,
    required this.from,
    required this.to,
    required this.editableTo,
    required this.includedIntervalId,
    required this.intervalIds,
    required this.yearId,
    this.year,
    this.certificateType,
    this.certificateDate,
    this.custom,
    this.notPresentWithoutAbsenceCount,
    this.notPresentWithAbsenceCount,
  });
  
  factory Interval.fromJson(Map<String, Object?> json) => _$IntervalFromJson(json);
  
  final int id;
  final String name;
  final String type;
  final String from;
  final String to;
  @JsonKey(name: 'editable_to')
  final String editableTo;
  @JsonKey(name: 'included_interval_id')
  final int? includedIntervalId;
  @JsonKey(name: 'interval_ids')
  final String intervalIds;
  @JsonKey(name: 'year_id')
  final int yearId;
  final List<Year>? year;
  @JsonKey(name: 'certificate_type')
  final String? certificateType;
  @JsonKey(name: 'certificate_date')
  final String? certificateDate;
  final String? custom;
  @JsonKey(name: 'not_present_without_absence_count')
  final String? notPresentWithoutAbsenceCount;
  @JsonKey(name: 'not_present_with_absence_count')
  final String? notPresentWithAbsenceCount;

  Map<String, Object?> toJson() => _$IntervalToJson(this);
}
