// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table_time.dart';
import 'meta147.dart';

part 'get_time_table_times_id_response.g.dart';

@JsonSerializable()
class GetTimeTableTimesIdResponse {
  const GetTimeTableTimesIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetTimeTableTimesIdResponse.fromJson(Map<String, Object?> json) => _$GetTimeTableTimesIdResponseFromJson(json);
  
  final TimeTableTime data;
  final Meta147 meta;

  Map<String, Object?> toJson() => _$GetTimeTableTimesIdResponseToJson(this);
}
