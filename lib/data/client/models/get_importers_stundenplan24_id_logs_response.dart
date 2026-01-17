// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer_log.dart';
import 'meta70.dart';
import 'links10.dart';

part 'get_importers_stundenplan24_id_logs_response.g.dart';

@JsonSerializable()
class GetImportersStundenplan24IdLogsResponse {
  const GetImportersStundenplan24IdLogsResponse({
    required this.data,
    required this.meta,
    required this.links,
  });
  
  factory GetImportersStundenplan24IdLogsResponse.fromJson(Map<String, Object?> json) => _$GetImportersStundenplan24IdLogsResponseFromJson(json);
  
  final List<ImporterLog> data;
  final Meta70 meta;
  final Links10 links;

  Map<String, Object?> toJson() => _$GetImportersStundenplan24IdLogsResponseToJson(this);
}
