// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_intervals_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetIntervalsResponse _$GetIntervalsResponseFromJson(
  Map<String, dynamic> json,
) => GetIntervalsResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Interval.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetIntervalsResponseToJson(
  GetIntervalsResponse instance,
) => <String, dynamic>{'data': instance.data};
