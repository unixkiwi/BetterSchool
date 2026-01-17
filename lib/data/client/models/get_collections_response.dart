// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'collection.dart';

part 'get_collections_response.g.dart';

@JsonSerializable()
class GetCollectionsResponse {
  const GetCollectionsResponse({
    required this.data,
  });
  
  factory GetCollectionsResponse.fromJson(Map<String, Object?> json) => _$GetCollectionsResponseFromJson(json);
  
  final List<Collection> data;

  Map<String, Object?> toJson() => _$GetCollectionsResponseToJson(this);
}
