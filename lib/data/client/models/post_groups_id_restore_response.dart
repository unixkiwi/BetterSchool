// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'group.dart';
import 'meta46.dart';

part 'post_groups_id_restore_response.g.dart';

@JsonSerializable()
class PostGroupsIdRestoreResponse {
  const PostGroupsIdRestoreResponse({
    required this.data,
    required this.meta,
  });
  
  factory PostGroupsIdRestoreResponse.fromJson(Map<String, Object?> json) => _$PostGroupsIdRestoreResponseFromJson(json);
  
  final Group data;
  final Meta46 meta;

  Map<String, Object?> toJson() => _$PostGroupsIdRestoreResponseToJson(this);
}
