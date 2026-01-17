// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'interval.dart';
import 'meta77.dart';

part 'put_intervals_id_response.g.dart';

@JsonSerializable()
class PutIntervalsIdResponse {
  const PutIntervalsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutIntervalsIdResponse.fromJson(Map<String, Object?> json) => _$PutIntervalsIdResponseFromJson(json);
  
  final Interval data;
  final Meta77 meta;

  Map<String, Object?> toJson() => _$PutIntervalsIdResponseToJson(this);
}
