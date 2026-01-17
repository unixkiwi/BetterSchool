// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_level_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreLevelRequest _$StoreLevelRequestFromJson(Map<String, dynamic> json) =>
    StoreLevelRequest(
      name: json['name'] as String,
      intervalType: json['interval_type'] as String?,
      timeType: json['time_type'] as String?,
      bestGrade: (json['best_grade'] as num?)?.toInt(),
      worstGrade: (json['worst_grade'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StoreLevelRequestToJson(StoreLevelRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'interval_type': instance.intervalType,
      'time_type': instance.timeType,
      'best_grade': instance.bestGrade,
      'worst_grade': instance.worstGrade,
    };
