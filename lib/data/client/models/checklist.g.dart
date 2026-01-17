// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Checklist _$ChecklistFromJson(Map<String, dynamic> json) => Checklist(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  date: json['date'] as String,
  description: json['description'] as String?,
  forValue: json['for'] as String,
  uncheckedCount: json['unchecked_count'] as String,
  checkedCount: json['checked_count'] as String,
  singleGroup: json['single_group'] as bool,
  type: json['type'] == null
      ? null
      : ChecklistType.fromJson(json['type'] as Map<String, dynamic>),
  groups: (json['groups'] as List<dynamic>?)
      ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
      .toList(),
  checks: (json['checks'] as List<dynamic>?)
      ?.map((e) => ChecklistStudent.fromJson(e as Map<String, dynamic>))
      .toList(),
  teacher: json['teacher'] == null
      ? null
      : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChecklistToJson(Checklist instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'date': instance.date,
  'description': instance.description,
  'for': instance.forValue,
  'unchecked_count': instance.uncheckedCount,
  'checked_count': instance.checkedCount,
  'single_group': instance.singleGroup,
  'type': instance.type,
  'groups': instance.groups,
  'checks': instance.checks,
  'teacher': instance.teacher,
};
