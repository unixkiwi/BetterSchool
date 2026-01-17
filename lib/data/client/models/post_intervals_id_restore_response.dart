// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'interval.dart';
import 'meta74.dart';

part 'post_intervals_id_restore_response.g.dart';

@JsonSerializable()
class PostIntervalsIdRestoreResponse {
  const PostIntervalsIdRestoreResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostIntervalsIdRestoreResponse.fromJson(Map<String, Object?> json) => _$PostIntervalsIdRestoreResponseFromJson(json);
  
  final Interval data;
  final Meta74 meta;

  Map<String, Object?> toJson() => _$PostIntervalsIdRestoreResponseToJson(this);
}
