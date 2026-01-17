// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_intervals_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetIntervalsIdResponse _$GetIntervalsIdResponseFromJson(
  Map<String, dynamic> json,
) => GetIntervalsIdResponse(
  data: Interval.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta76.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetIntervalsIdResponseToJson(
  GetIntervalsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
