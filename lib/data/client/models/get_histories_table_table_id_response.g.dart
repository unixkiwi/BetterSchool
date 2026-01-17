// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_histories_table_table_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHistoriesTableTableIdResponse _$GetHistoriesTableTableIdResponseFromJson(
  Map<String, dynamic> json,
) => GetHistoriesTableTableIdResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => History.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: Meta59.fromJson(json['meta'] as Map<String, dynamic>),
  links: Links6.fromJson(json['links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetHistoriesTableTableIdResponseToJson(
  GetHistoriesTableTableIdResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'meta': instance.meta,
  'links': instance.links,
};
