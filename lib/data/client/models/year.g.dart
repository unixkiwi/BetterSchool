// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'year.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Year _$YearFromJson(Map<String, dynamic> json) => Year(
  id: (json['id'] as num).toInt(),
  ids: json['ids'] as String,
  name: json['name'] as String,
  from: json['from'] as String,
  to: json['to'] as String,
  intervals: (json['intervals'] as List<dynamic>?)
      ?.map((e) => Interval.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$YearToJson(Year instance) => <String, dynamic>{
  'id': instance.id,
  'ids': instance.ids,
  'name': instance.name,
  'from': instance.from,
  'to': instance.to,
  'intervals': instance.intervals,
};
