// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'interval.dart';

part 'year.g.dart';

@JsonSerializable()
class Year {
  const Year({
    required this.id,
    required this.ids,
    required this.name,
    required this.from,
    required this.to,
    this.intervals,
  });
  
  factory Year.fromJson(Map<String, Object?> json) => _$YearFromJson(json);
  
  final int id;
  final String ids;
  final String name;
  final String from;
  final String to;
  final List<Interval>? intervals;

  Map<String, Object?> toJson() => _$YearToJson(this);
}
