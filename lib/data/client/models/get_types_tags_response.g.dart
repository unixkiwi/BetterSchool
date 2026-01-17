// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_types_tags_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTypesTagsResponse _$GetTypesTagsResponseFromJson(
  Map<String, dynamic> json,
) => GetTypesTagsResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Tag.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetTypesTagsResponseToJson(
  GetTypesTagsResponse instance,
) => <String, dynamic>{'data': instance.data};
