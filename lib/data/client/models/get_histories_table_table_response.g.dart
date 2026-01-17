// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_histories_table_table_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHistoriesTableTableResponse _$GetHistoriesTableTableResponseFromJson(
  Map<String, dynamic> json,
) => GetHistoriesTableTableResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => History.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: Meta58.fromJson(json['meta'] as Map<String, dynamic>),
  links: Links4.fromJson(json['links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetHistoriesTableTableResponseToJson(
  GetHistoriesTableTableResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'meta': instance.meta,
  'links': instance.links,
};
