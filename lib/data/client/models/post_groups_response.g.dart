// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_groups_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostGroupsResponse _$PostGroupsResponseFromJson(Map<String, dynamic> json) =>
    PostGroupsResponse(
      data: Group.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta47.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostGroupsResponseToJson(PostGroupsResponse instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
