// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer.dart';
import 'meta64.dart';

part 'post_importers_response.g.dart';

@JsonSerializable()
class PostImportersResponse {
  const PostImportersResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostImportersResponse.fromJson(Map<String, Object?> json) => _$PostImportersResponseFromJson(json);
  
  final Importer data;
  final Meta64 meta;

  Map<String, Object?> toJson() => _$PostImportersResponseToJson(this);
}
