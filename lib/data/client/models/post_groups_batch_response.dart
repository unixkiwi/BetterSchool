// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'group.dart';

part 'post_groups_batch_response.g.dart';

@JsonSerializable()
class PostGroupsBatchResponse {
  const PostGroupsBatchResponse({
    required this.data,
  });
  
  factory PostGroupsBatchResponse.fromJson(Map<String, Object?> json) => _$PostGroupsBatchResponseFromJson(json);
  
  final List<Group> data;

  Map<String, Object?> toJson() => _$PostGroupsBatchResponseToJson(this);
}
