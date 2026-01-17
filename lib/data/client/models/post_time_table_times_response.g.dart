// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_time_table_times_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostTimeTableTimesResponse _$PostTimeTableTimesResponseFromJson(
  Map<String, dynamic> json,
) => PostTimeTableTimesResponse(
  data: TimeTableTime.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta145.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostTimeTableTimesResponseToJson(
  PostTimeTableTimesResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
