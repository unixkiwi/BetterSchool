// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer_stundenplan24.dart';
import 'meta71.dart';

part 'post_importers_stundenplan24_response.g.dart';

@JsonSerializable()
class PostImportersStundenplan24Response {
  const PostImportersStundenplan24Response({
    required this.data,
    required this.meta,
  });
  
  factory PostImportersStundenplan24Response.fromJson(Map<String, Object?> json) => _$PostImportersStundenplan24ResponseFromJson(json);
  
  final ImporterStundenplan24 data;
  final Meta71 meta;

  Map<String, Object?> toJson() => _$PostImportersStundenplan24ResponseToJson(this);
}
