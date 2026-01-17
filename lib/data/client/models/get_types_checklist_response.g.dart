// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_types_checklist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTypesChecklistResponse _$GetTypesChecklistResponseFromJson(
  Map<String, dynamic> json,
) => GetTypesChecklistResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => ChecklistType.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetTypesChecklistResponseToJson(
  GetTypesChecklistResponse instance,
) => <String, dynamic>{'data': instance.data};
