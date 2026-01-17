// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_intervals_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutIntervalsIdResponse _$PutIntervalsIdResponseFromJson(
  Map<String, dynamic> json,
) => PutIntervalsIdResponse(
  data: Interval.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta77.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutIntervalsIdResponseToJson(
  PutIntervalsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
