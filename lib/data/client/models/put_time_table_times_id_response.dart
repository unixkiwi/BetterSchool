// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table_time.dart';
import 'meta146.dart';

part 'put_time_table_times_id_response.g.dart';

@JsonSerializable()
class PutTimeTableTimesIdResponse {
  const PutTimeTableTimesIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutTimeTableTimesIdResponse.fromJson(Map<String, Object?> json) => _$PutTimeTableTimesIdResponseFromJson(json);
  
  final TimeTableTime data;
  final Meta146 meta;

  Map<String, Object?> toJson() => _$PutTimeTableTimesIdResponseToJson(this);
}
