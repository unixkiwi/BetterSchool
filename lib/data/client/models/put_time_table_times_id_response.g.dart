// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_time_table_times_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutTimeTableTimesIdResponse _$PutTimeTableTimesIdResponseFromJson(
  Map<String, dynamic> json,
) => PutTimeTableTimesIdResponse(
  data: TimeTableTime.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta146.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutTimeTableTimesIdResponseToJson(
  PutTimeTableTimesIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
