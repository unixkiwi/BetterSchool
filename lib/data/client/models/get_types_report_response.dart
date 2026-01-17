// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'array_collection.dart';
import 'meta32.dart';

part 'get_types_report_response.g.dart';

@JsonSerializable()
class GetTypesReportResponse {
  const GetTypesReportResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetTypesReportResponse.fromJson(Map<String, Object?> json) => _$GetTypesReportResponseFromJson(json);
  
  final ArrayCollection data;
  final Meta32 meta;

  Map<String, Object?> toJson() => _$GetTypesReportResponseToJson(this);
}
