// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_groups_id_restore_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostGroupsIdRestoreResponse _$PostGroupsIdRestoreResponseFromJson(
  Map<String, dynamic> json,
) => PostGroupsIdRestoreResponse(
  data: Group.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta46.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostGroupsIdRestoreResponseToJson(
  PostGroupsIdRestoreResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
