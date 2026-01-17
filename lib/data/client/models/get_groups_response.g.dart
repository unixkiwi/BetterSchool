// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_groups_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGroupsResponse _$GetGroupsResponseFromJson(Map<String, dynamic> json) =>
    GetGroupsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetGroupsResponseToJson(GetGroupsResponse instance) =>
    <String, dynamic>{'data': instance.data};
