// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'tag.dart';

part 'put_types_tags_id_response.g.dart';

@JsonSerializable()
class PutTypesTagsIdResponse {
  const PutTypesTagsIdResponse({
    required this.data,
  });
  
  factory PutTypesTagsIdResponse.fromJson(Map<String, Object?> json) => _$PutTypesTagsIdResponseFromJson(json);
  
  final Tag data;

  Map<String, Object?> toJson() => _$PutTypesTagsIdResponseToJson(this);
}
