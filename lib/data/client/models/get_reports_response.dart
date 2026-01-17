// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'report.dart';

part 'get_reports_response.g.dart';

@JsonSerializable()
class GetReportsResponse {
  const GetReportsResponse({
    required this.data,
  });
  
  factory GetReportsResponse.fromJson(Map<String, Object?> json) => _$GetReportsResponseFromJson(json);
  
  final List<Report> data;

  Map<String, Object?> toJson() => _$GetReportsResponseToJson(this);
}
