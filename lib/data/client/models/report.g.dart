// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Report _$ReportFromJson(Map<String, dynamic> json) => Report(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  forValue: json['for'] as String,
  range: json['range'] as String,
  model: json['model'] as String,
  filterResult: json['filter_result'] as List<dynamic>?,
  groupBy: json['group_by'] as String?,
  aggregateType: json['aggregate_type'] as String,
  teacherId: (json['teacher_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$ReportToJson(Report instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'for': instance.forValue,
  'range': instance.range,
  'model': instance.model,
  'filter_result': instance.filterResult,
  'group_by': instance.groupBy,
  'aggregate_type': instance.aggregateType,
  'teacher_id': instance.teacherId,
};
