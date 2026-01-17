// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_groups_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutGroupsIdResponse _$PutGroupsIdResponseFromJson(Map<String, dynamic> json) =>
    PutGroupsIdResponse(
      data: Group.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta48.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PutGroupsIdResponseToJson(
  PutGroupsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
