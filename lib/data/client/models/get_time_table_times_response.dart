// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table_time.dart';

part 'get_time_table_times_response.g.dart';

@JsonSerializable()
class GetTimeTableTimesResponse {
  const GetTimeTableTimesResponse({
    required this.data,
  });
  
  factory GetTimeTableTimesResponse.fromJson(Map<String, Object?> json) => _$GetTimeTableTimesResponseFromJson(json);
  
  final List<TimeTableTime> data;

  Map<String, Object?> toJson() => _$GetTimeTableTimesResponseToJson(this);
}
