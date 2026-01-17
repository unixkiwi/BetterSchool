// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer_stundenplan24.dart';
import 'meta73.dart';

part 'put_importers_stundenplan24_id_response.g.dart';

@JsonSerializable()
class PutImportersStundenplan24IdResponse {
  const PutImportersStundenplan24IdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutImportersStundenplan24IdResponse.fromJson(Map<String, Object?> json) => _$PutImportersStundenplan24IdResponseFromJson(json);
  
  final ImporterStundenplan24 data;
  final Meta73 meta;

  Map<String, Object?> toJson() => _$PutImportersStundenplan24IdResponseToJson(this);
}
