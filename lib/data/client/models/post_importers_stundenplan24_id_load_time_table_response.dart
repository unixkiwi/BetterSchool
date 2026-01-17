// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer_stundenplan24.dart';
import 'meta68.dart';

part 'post_importers_stundenplan24_id_load_time_table_response.g.dart';

@JsonSerializable()
class PostImportersStundenplan24IdLoadTimeTableResponse {
  const PostImportersStundenplan24IdLoadTimeTableResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostImportersStundenplan24IdLoadTimeTableResponse.fromJson(Map<String, Object?> json) => _$PostImportersStundenplan24IdLoadTimeTableResponseFromJson(json);
  
  final ImporterStundenplan24 data;
  final Meta68 meta;

  Map<String, Object?> toJson() => _$PostImportersStundenplan24IdLoadTimeTableResponseToJson(this);
}
