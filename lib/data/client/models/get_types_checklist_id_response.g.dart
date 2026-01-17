// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_types_checklist_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTypesChecklistIdResponse _$GetTypesChecklistIdResponseFromJson(
  Map<String, dynamic> json,
) => GetTypesChecklistIdResponse(
  data: ChecklistType.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta24.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetTypesChecklistIdResponseToJson(
  GetTypesChecklistIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
