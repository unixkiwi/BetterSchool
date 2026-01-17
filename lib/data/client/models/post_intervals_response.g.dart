// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_intervals_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostIntervalsResponse _$PostIntervalsResponseFromJson(
  Map<String, dynamic> json,
) => PostIntervalsResponse(
  data: Interval.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta75.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostIntervalsResponseToJson(
  PostIntervalsResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
