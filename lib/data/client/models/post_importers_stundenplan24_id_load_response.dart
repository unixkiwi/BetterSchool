// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer_stundenplan24.dart';
import 'meta67.dart';

part 'post_importers_stundenplan24_id_load_response.g.dart';

@JsonSerializable()
class PostImportersStundenplan24IdLoadResponse {
  const PostImportersStundenplan24IdLoadResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostImportersStundenplan24IdLoadResponse.fromJson(Map<String, Object?> json) => _$PostImportersStundenplan24IdLoadResponseFromJson(json);
  
  final ImporterStundenplan24 data;
  final Meta67 meta;

  Map<String, Object?> toJson() => _$PostImportersStundenplan24IdLoadResponseToJson(this);
}
