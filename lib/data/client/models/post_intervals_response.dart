// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'interval.dart';
import 'meta75.dart';

part 'post_intervals_response.g.dart';

@JsonSerializable()
class PostIntervalsResponse {
  const PostIntervalsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostIntervalsResponse.fromJson(Map<String, Object?> json) => _$PostIntervalsResponseFromJson(json);
  
  final Interval data;
  final Meta75 meta;

  Map<String, Object?> toJson() => _$PostIntervalsResponseToJson(this);
}
