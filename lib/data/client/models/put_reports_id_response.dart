// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'report.dart';

part 'put_reports_id_response.g.dart';

@JsonSerializable()
class PutReportsIdResponse {
  const PutReportsIdResponse({
    required this.data,
  });
  
  factory PutReportsIdResponse.fromJson(Map<String, Object?> json) => _$PutReportsIdResponseFromJson(json);
  
  final Report data;

  Map<String, Object?> toJson() => _$PutReportsIdResponseToJson(this);
}
