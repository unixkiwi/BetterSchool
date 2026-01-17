// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_histories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHistoriesResponse _$GetHistoriesResponseFromJson(
  Map<String, dynamic> json,
) => GetHistoriesResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => History.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: Meta57.fromJson(json['meta'] as Map<String, dynamic>),
  links: Links2.fromJson(json['links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetHistoriesResponseToJson(
  GetHistoriesResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'meta': instance.meta,
  'links': instance.links,
};
