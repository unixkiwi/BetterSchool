// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'tag.dart';

part 'get_types_tags_id_response.g.dart';

@JsonSerializable()
class GetTypesTagsIdResponse {
  const GetTypesTagsIdResponse({
    required this.data,
  });
  
  factory GetTypesTagsIdResponse.fromJson(Map<String, Object?> json) => _$GetTypesTagsIdResponseFromJson(json);
  
  final Tag data;

  Map<String, Object?> toJson() => _$GetTypesTagsIdResponseToJson(this);
}
