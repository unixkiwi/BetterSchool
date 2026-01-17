// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'collection.dart';
import 'meta27.dart';

part 'post_collections_response.g.dart';

@JsonSerializable()
class PostCollectionsResponse {
  const PostCollectionsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostCollectionsResponse.fromJson(Map<String, Object?> json) => _$PostCollectionsResponseFromJson(json);
  
  final Collection data;
  final Meta27 meta;

  Map<String, Object?> toJson() => _$PostCollectionsResponseToJson(this);
}
