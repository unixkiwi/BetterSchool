// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer_log.dart';
import 'meta63.dart';
import 'links8.dart';

part 'get_importers_importer_logs_response.g.dart';

@JsonSerializable()
class GetImportersImporterLogsResponse {
  const GetImportersImporterLogsResponse({
    required this.data,
    required this.meta,
    required this.links,
  });
  
  factory GetImportersImporterLogsResponse.fromJson(Map<String, Object?> json) => _$GetImportersImporterLogsResponseFromJson(json);
  
  final List<ImporterLog> data;
  final Meta63 meta;
  final Links8 links;

  Map<String, Object?> toJson() => _$GetImportersImporterLogsResponseToJson(this);
}
