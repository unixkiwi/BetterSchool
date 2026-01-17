// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer_stundenplan24.dart';
import 'meta72.dart';

part 'get_importers_stundenplan24_id_response.g.dart';

@JsonSerializable()
class GetImportersStundenplan24IdResponse {
  const GetImportersStundenplan24IdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetImportersStundenplan24IdResponse.fromJson(Map<String, Object?> json) => _$GetImportersStundenplan24IdResponseFromJson(json);
  
  final ImporterStundenplan24 data;
  final Meta72 meta;

  Map<String, Object?> toJson() => _$GetImportersStundenplan24IdResponseToJson(this);
}
