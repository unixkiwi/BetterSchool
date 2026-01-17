// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer_stundenplan24.dart';

part 'get_importers_stundenplan24_response.g.dart';

@JsonSerializable()
class GetImportersStundenplan24Response {
  const GetImportersStundenplan24Response({
    required this.data,
  });
  
  factory GetImportersStundenplan24Response.fromJson(Map<String, Object?> json) => _$GetImportersStundenplan24ResponseFromJson(json);
  
  final List<ImporterStundenplan24> data;

  Map<String, Object?> toJson() => _$GetImportersStundenplan24ResponseToJson(this);
}
