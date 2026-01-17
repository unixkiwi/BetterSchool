// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer.dart';
import 'meta60.dart';

part 'post_importers_importer_load_response.g.dart';

@JsonSerializable()
class PostImportersImporterLoadResponse {
  const PostImportersImporterLoadResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostImportersImporterLoadResponse.fromJson(Map<String, Object?> json) => _$PostImportersImporterLoadResponseFromJson(json);
  
  final Importer data;
  final Meta60 meta;

  Map<String, Object?> toJson() => _$PostImportersImporterLoadResponseToJson(this);
}
