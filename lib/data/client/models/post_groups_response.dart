// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'group.dart';
import 'meta47.dart';

part 'post_groups_response.g.dart';

@JsonSerializable()
class PostGroupsResponse {
  const PostGroupsResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostGroupsResponse.fromJson(Map<String, Object?> json) => _$PostGroupsResponseFromJson(json);
  
  final Group data;
  final Meta47 meta;

  Map<String, Object?> toJson() => _$PostGroupsResponseToJson(this);
}
