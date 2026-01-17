// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer_stundenplan24.dart';
import 'meta69.dart';

part 'post_importers_stundenplan24_id_load_substitutionplan_response.g.dart';

@JsonSerializable()
class PostImportersStundenplan24IdLoadSubstitutionplanResponse {
  const PostImportersStundenplan24IdLoadSubstitutionplanResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostImportersStundenplan24IdLoadSubstitutionplanResponse.fromJson(Map<String, Object?> json) => _$PostImportersStundenplan24IdLoadSubstitutionplanResponseFromJson(json);
  
  final ImporterStundenplan24 data;
  final Meta69 meta;

  Map<String, Object?> toJson() => _$PostImportersStundenplan24IdLoadSubstitutionplanResponseToJson(this);
}
