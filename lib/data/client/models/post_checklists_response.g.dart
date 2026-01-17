// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_checklists_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostChecklistsResponse _$PostChecklistsResponseFromJson(
  Map<String, dynamic> json,
) => PostChecklistsResponse(
  data: Checklist.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta20.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostChecklistsResponseToJson(
  PostChecklistsResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
