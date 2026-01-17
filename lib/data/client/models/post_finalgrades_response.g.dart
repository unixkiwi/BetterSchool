// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_finalgrades_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostFinalgradesResponse _$PostFinalgradesResponseFromJson(
  Map<String, dynamic> json,
) => PostFinalgradesResponse(
  data: Finalgrade.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta37.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostFinalgradesResponseToJson(
  PostFinalgradesResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
