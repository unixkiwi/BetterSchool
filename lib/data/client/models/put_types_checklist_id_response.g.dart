// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_types_checklist_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutTypesChecklistIdResponse _$PutTypesChecklistIdResponseFromJson(
  Map<String, dynamic> json,
) => PutTypesChecklistIdResponse(
  data: ChecklistType.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta25.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutTypesChecklistIdResponseToJson(
  PutTypesChecklistIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
