// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_checklists_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetChecklistsIdResponse _$GetChecklistsIdResponseFromJson(
  Map<String, dynamic> json,
) => GetChecklistsIdResponse(
  data: Checklist.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta22.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetChecklistsIdResponseToJson(
  GetChecklistsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
