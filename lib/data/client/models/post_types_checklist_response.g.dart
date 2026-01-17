// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_types_checklist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostTypesChecklistResponse _$PostTypesChecklistResponseFromJson(
  Map<String, dynamic> json,
) => PostTypesChecklistResponse(
  data: ChecklistType.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta23.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostTypesChecklistResponseToJson(
  PostTypesChecklistResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
