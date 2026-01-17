// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_students_id_intervals_interval_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutStudentsIdIntervalsIntervalResponse
_$PutStudentsIdIntervalsIntervalResponseFromJson(Map<String, dynamic> json) =>
    PutStudentsIdIntervalsIntervalResponse(
      data: Student.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta118.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PutStudentsIdIntervalsIntervalResponseToJson(
  PutStudentsIdIntervalsIntervalResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
