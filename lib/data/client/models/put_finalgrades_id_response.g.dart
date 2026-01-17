// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_finalgrades_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutFinalgradesIdResponse _$PutFinalgradesIdResponseFromJson(
  Map<String, dynamic> json,
) => PutFinalgradesIdResponse(
  data: Finalgrade.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta38.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutFinalgradesIdResponseToJson(
  PutFinalgradesIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
