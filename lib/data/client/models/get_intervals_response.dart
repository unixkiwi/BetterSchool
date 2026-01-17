// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'interval.dart';

part 'get_intervals_response.g.dart';

@JsonSerializable()
class GetIntervalsResponse {
  const GetIntervalsResponse({
    required this.data,
  });
  
  factory GetIntervalsResponse.fromJson(Map<String, Object?> json) => _$GetIntervalsResponseFromJson(json);
  
  final List<Interval> data;

  Map<String, Object?> toJson() => _$GetIntervalsResponseToJson(this);
}
