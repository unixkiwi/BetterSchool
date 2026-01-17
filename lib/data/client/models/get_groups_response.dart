// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'group.dart';

part 'get_groups_response.g.dart';

@JsonSerializable()
class GetGroupsResponse {
  const GetGroupsResponse({
    required this.data,
  });
  
  factory GetGroupsResponse.fromJson(Map<String, Object?> json) => _$GetGroupsResponseFromJson(json);
  
  final List<Group> data;

  Map<String, Object?> toJson() => _$GetGroupsResponseToJson(this);
}
