// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_groups_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGroupsGroupResponse _$GetGroupsGroupResponseFromJson(
  Map<String, dynamic> json,
) => GetGroupsGroupResponse(
  data: Group.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta49.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetGroupsGroupResponseToJson(
  GetGroupsGroupResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
