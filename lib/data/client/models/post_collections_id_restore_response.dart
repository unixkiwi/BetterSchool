// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'collection.dart';
import 'meta26.dart';

part 'post_collections_id_restore_response.g.dart';

@JsonSerializable()
class PostCollectionsIdRestoreResponse {
  const PostCollectionsIdRestoreResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostCollectionsIdRestoreResponse.fromJson(Map<String, Object?> json) => _$PostCollectionsIdRestoreResponseFromJson(json);
  
  final Collection data;
  final Meta26 meta;

  Map<String, Object?> toJson() => _$PostCollectionsIdRestoreResponseToJson(this);
}
