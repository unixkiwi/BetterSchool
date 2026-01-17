// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer.dart';
import 'meta66.dart';

part 'put_importers_importer_response.g.dart';

@JsonSerializable()
class PutImportersImporterResponse {
  const PutImportersImporterResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutImportersImporterResponse.fromJson(Map<String, Object?> json) => _$PutImportersImporterResponseFromJson(json);
  
  final Importer data;
  final Meta66 meta;

  Map<String, Object?> toJson() => _$PutImportersImporterResponseToJson(this);
}
