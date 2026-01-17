// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'meta164.dart';

part 'push_importer_request.g.dart';

@JsonSerializable()
class PushImporterRequest {
  const PushImporterRequest({
    required this.data,
    this.meta,
  });
  
  factory PushImporterRequest.fromJson(Map<String, Object?> json) => _$PushImporterRequestFromJson(json);
  
  final List<String> data;
  final Meta164? meta;

  Map<String, Object?> toJson() => _$PushImporterRequestToJson(this);
}
