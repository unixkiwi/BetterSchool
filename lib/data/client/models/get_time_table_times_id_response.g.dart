// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_time_table_times_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTimeTableTimesIdResponse _$GetTimeTableTimesIdResponseFromJson(
  Map<String, dynamic> json,
) => GetTimeTableTimesIdResponse(
  data: TimeTableTime.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta147.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetTimeTableTimesIdResponseToJson(
  GetTimeTableTimesIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
