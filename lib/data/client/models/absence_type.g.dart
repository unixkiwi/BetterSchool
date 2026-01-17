// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absence_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbsenceType _$AbsenceTypeFromJson(Map<String, dynamic> json) => AbsenceType(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  defaultValue: (json['default'] as num).toInt(),
  editableAs: json['editable_as'] as String,
  defaultPresent: (json['default_present'] as num?)?.toInt(),
  absences: (json['absences'] as List<dynamic>?)
      ?.map((e) => Absence.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AbsenceTypeToJson(AbsenceType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'default': instance.defaultValue,
      'editable_as': instance.editableAs,
      'default_present': instance.defaultPresent,
      'absences': instance.absences,
    };
