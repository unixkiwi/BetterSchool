// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_checklists_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetChecklistsResponse _$GetChecklistsResponseFromJson(
  Map<String, dynamic> json,
) => GetChecklistsResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Checklist.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetChecklistsResponseToJson(
  GetChecklistsResponse instance,
) => <String, dynamic>{'data': instance.data};
