// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_note_type_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateNoteTypeRequest _$UpdateNoteTypeRequestFromJson(
  Map<String, dynamic> json,
) => UpdateNoteTypeRequest(
  color: json['color'] as String?,
  name: json['name'] as String?,
  notableType: json['notable_type'] as String?,
  defaultValue: json['default'] as bool?,
  defaultFor: json['default_for'] == null
      ? null
      : UpdateNoteTypeRequestDefaultFor.fromJson(json['default_for'] as String),
);

Map<String, dynamic> _$UpdateNoteTypeRequestToJson(
  UpdateNoteTypeRequest instance,
) => <String, dynamic>{
  'color': instance.color,
  'name': instance.name,
  'notable_type': instance.notableType,
  'default': instance.defaultValue,
  'default_for': _$UpdateNoteTypeRequestDefaultForEnumMap[instance.defaultFor],
};

const _$UpdateNoteTypeRequestDefaultForEnumMap = {
  UpdateNoteTypeRequestDefaultFor.mod: 'mod',
  UpdateNoteTypeRequestDefaultFor.management: 'management',
  UpdateNoteTypeRequestDefaultFor.teacher: 'teacher',
  UpdateNoteTypeRequestDefaultFor.guardian: 'guardian',
  UpdateNoteTypeRequestDefaultFor.student: 'student',
  UpdateNoteTypeRequestDefaultFor.$unknown: r'$unknown',
};
