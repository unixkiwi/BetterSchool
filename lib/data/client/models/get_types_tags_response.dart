// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'tag.dart';

part 'get_types_tags_response.g.dart';

@JsonSerializable()
class GetTypesTagsResponse {
  const GetTypesTagsResponse({
    required this.data,
  });
  
  factory GetTypesTagsResponse.fromJson(Map<String, Object?> json) => _$GetTypesTagsResponseFromJson(json);
  
  final List<Tag> data;

  Map<String, Object?> toJson() => _$GetTypesTagsResponseToJson(this);
}
