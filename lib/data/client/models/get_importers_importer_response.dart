// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer.dart';
import 'meta65.dart';

part 'get_importers_importer_response.g.dart';

@JsonSerializable()
class GetImportersImporterResponse {
  const GetImportersImporterResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetImportersImporterResponse.fromJson(Map<String, Object?> json) => _$GetImportersImporterResponseFromJson(json);
  
  final Importer data;
  final Meta65 meta;

  Map<String, Object?> toJson() => _$GetImportersImporterResponseToJson(this);
}
