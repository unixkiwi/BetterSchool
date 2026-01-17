// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Interval _$IntervalFromJson(Map<String, dynamic> json) => Interval(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  type: json['type'] as String,
  from: json['from'] as String,
  to: json['to'] as String,
  editableTo: json['editable_to'] as String,
  includedIntervalId: (json['included_interval_id'] as num?)?.toInt(),
  intervalIds: json['interval_ids'] as String,
  yearId: (json['year_id'] as num).toInt(),
  year: (json['year'] as List<dynamic>?)
      ?.map((e) => Year.fromJson(e as Map<String, dynamic>))
      .toList(),
  certificateType: json['certificate_type'] as String?,
  certificateDate: json['certificate_date'] as String?,
  custom: json['custom'] as String?,
  notPresentWithoutAbsenceCount:
      json['not_present_without_absence_count'] as String?,
  notPresentWithAbsenceCount: json['not_present_with_absence_count'] as String?,
);

Map<String, dynamic> _$IntervalToJson(Interval instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': instance.type,
  'from': instance.from,
  'to': instance.to,
  'editable_to': instance.editableTo,
  'included_interval_id': instance.includedIntervalId,
  'interval_ids': instance.intervalIds,
  'year_id': instance.yearId,
  'year': instance.year,
  'certificate_type': instance.certificateType,
  'certificate_date': instance.certificateDate,
  'custom': instance.custom,
  'not_present_without_absence_count': instance.notPresentWithoutAbsenceCount,
  'not_present_with_absence_count': instance.notPresentWithAbsenceCount,
};
