// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'interval.dart';
import 'meta76.dart';

part 'get_intervals_id_response.g.dart';

@JsonSerializable()
class GetIntervalsIdResponse {
  const GetIntervalsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetIntervalsIdResponse.fromJson(Map<String, Object?> json) => _$GetIntervalsIdResponseFromJson(json);
  
  final Interval data;
  final Meta76 meta;

  Map<String, Object?> toJson() => _$GetIntervalsIdResponseToJson(this);
}
