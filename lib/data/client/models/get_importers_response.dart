// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'importer.dart';

part 'get_importers_response.g.dart';

@JsonSerializable()
class GetImportersResponse {
  const GetImportersResponse({
    required this.data,
  });
  
  factory GetImportersResponse.fromJson(Map<String, Object?> json) => _$GetImportersResponseFromJson(json);
  
  final List<Importer> data;

  Map<String, Object?> toJson() => _$GetImportersResponseToJson(this);
}
