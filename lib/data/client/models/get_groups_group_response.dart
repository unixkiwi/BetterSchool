// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'group.dart';
import 'meta49.dart';

part 'get_groups_group_response.g.dart';

@JsonSerializable()
class GetGroupsGroupResponse {
  const GetGroupsGroupResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetGroupsGroupResponse.fromJson(Map<String, Object?> json) => _$GetGroupsGroupResponseFromJson(json);
  
  final Group data;
  final Meta49 meta;

  Map<String, Object?> toJson() => _$GetGroupsGroupResponseToJson(this);
}
