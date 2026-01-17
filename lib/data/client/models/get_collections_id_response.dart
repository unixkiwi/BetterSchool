// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'collection.dart';
import 'meta29.dart';

part 'get_collections_id_response.g.dart';

@JsonSerializable()
class GetCollectionsIdResponse {
  const GetCollectionsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetCollectionsIdResponse.fromJson(Map<String, Object?> json) => _$GetCollectionsIdResponseFromJson(json);
  
  final Collection data;
  final Meta29 meta;

  Map<String, Object?> toJson() => _$GetCollectionsIdResponseToJson(this);
}
