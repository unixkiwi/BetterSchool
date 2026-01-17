// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'tag.dart';

part 'post_types_tags_response.g.dart';

@JsonSerializable()
class PostTypesTagsResponse {
  const PostTypesTagsResponse({
    required this.data,
  });
  
  factory PostTypesTagsResponse.fromJson(Map<String, Object?> json) => _$PostTypesTagsResponseFromJson(json);
  
  final Tag data;

  Map<String, Object?> toJson() => _$PostTypesTagsResponseToJson(this);
}
