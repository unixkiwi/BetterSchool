// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer.dart';
import 'meta61.dart';

part 'post_importers_importer_load_time_tables_response.g.dart';

@JsonSerializable()
class PostImportersImporterLoadTimeTablesResponse {
  const PostImportersImporterLoadTimeTablesResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostImportersImporterLoadTimeTablesResponse.fromJson(Map<String, Object?> json) => _$PostImportersImporterLoadTimeTablesResponseFromJson(json);
  
  final Importer data;
  final Meta61 meta;

  Map<String, Object?> toJson() => _$PostImportersImporterLoadTimeTablesResponseToJson(this);
}
