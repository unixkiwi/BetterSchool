// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_checklists_checklist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutChecklistsChecklistResponse _$PutChecklistsChecklistResponseFromJson(
  Map<String, dynamic> json,
) => PutChecklistsChecklistResponse(
  data: Checklist.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta21.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutChecklistsChecklistResponseToJson(
  PutChecklistsChecklistResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
