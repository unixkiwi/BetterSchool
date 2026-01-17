// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer.dart';
import 'meta62.dart';

part 'post_importers_importer_load_substitutionplans_response.g.dart';

@JsonSerializable()
class PostImportersImporterLoadSubstitutionplansResponse {
  const PostImportersImporterLoadSubstitutionplansResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostImportersImporterLoadSubstitutionplansResponse.fromJson(Map<String, Object?> json) => _$PostImportersImporterLoadSubstitutionplansResponseFromJson(json);
  
  final Importer data;
  final Meta62 meta;

  Map<String, Object?> toJson() => _$PostImportersImporterLoadSubstitutionplansResponseToJson(this);
}
