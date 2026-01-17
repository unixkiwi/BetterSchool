// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'collection.dart';
import 'meta28.dart';

part 'put_collections_id_response.g.dart';

@JsonSerializable()
class PutCollectionsIdResponse {
  const PutCollectionsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutCollectionsIdResponse.fromJson(Map<String, Object?> json) => _$PutCollectionsIdResponseFromJson(json);
  
  final Collection data;
  final Meta28 meta;

  Map<String, Object?> toJson() => _$PutCollectionsIdResponseToJson(this);
}
