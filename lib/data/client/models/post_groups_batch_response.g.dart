// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_groups_batch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostGroupsBatchResponse _$PostGroupsBatchResponseFromJson(
  Map<String, dynamic> json,
) => PostGroupsBatchResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Group.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostGroupsBatchResponseToJson(
  PostGroupsBatchResponse instance,
) => <String, dynamic>{'data': instance.data};
