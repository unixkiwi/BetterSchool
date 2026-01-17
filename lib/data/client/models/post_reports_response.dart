// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'report.dart';

part 'post_reports_response.g.dart';

@JsonSerializable()
class PostReportsResponse {
  const PostReportsResponse({
    required this.data,
  });
  
  factory PostReportsResponse.fromJson(Map<String, Object?> json) => _$PostReportsResponseFromJson(json);
  
  final Report data;

  Map<String, Object?> toJson() => _$PostReportsResponseToJson(this);
}
