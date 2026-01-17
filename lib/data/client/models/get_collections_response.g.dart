// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_collections_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCollectionsResponse _$GetCollectionsResponseFromJson(
  Map<String, dynamic> json,
) => GetCollectionsResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Collection.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetCollectionsResponseToJson(
  GetCollectionsResponse instance,
) => <String, dynamic>{'data': instance.data};
