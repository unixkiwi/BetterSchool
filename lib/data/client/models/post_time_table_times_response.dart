// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'time_table_time.dart';
import 'meta145.dart';

part 'post_time_table_times_response.g.dart';

@JsonSerializable()
class PostTimeTableTimesResponse {
  const PostTimeTableTimesResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostTimeTableTimesResponse.fromJson(Map<String, Object?> json) => _$PostTimeTableTimesResponseFromJson(json);
  
  final TimeTableTime data;
  final Meta145 meta;

  Map<String, Object?> toJson() => _$PostTimeTableTimesResponseToJson(this);
}
