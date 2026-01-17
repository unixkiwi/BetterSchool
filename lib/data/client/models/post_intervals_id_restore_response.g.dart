// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_intervals_id_restore_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostIntervalsIdRestoreResponse _$PostIntervalsIdRestoreResponseFromJson(
  Map<String, dynamic> json,
) => PostIntervalsIdRestoreResponse(
  data: Interval.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta74.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostIntervalsIdRestoreResponseToJson(
  PostIntervalsIdRestoreResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
