// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_time_table_times_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTimeTableTimesResponse _$GetTimeTableTimesResponseFromJson(
  Map<String, dynamic> json,
) => GetTimeTableTimesResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => TimeTableTime.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetTimeTableTimesResponseToJson(
  GetTimeTableTimesResponse instance,
) => <String, dynamic>{'data': instance.data};
