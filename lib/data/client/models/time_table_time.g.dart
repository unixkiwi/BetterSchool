// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_table_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeTableTime _$TimeTableTimeFromJson(Map<String, dynamic> json) =>
    TimeTableTime(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      validFrom: json['valid_from'] as String,
      validTo: json['valid_to'] as String,
      defaultValue: (json['default'] as num).toInt(),
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => TimeTableTimeLesson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TimeTableTimeToJson(TimeTableTime instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'valid_from': instance.validFrom,
      'valid_to': instance.validTo,
      'default': instance.defaultValue,
      'lessons': instance.lessons,
    };
