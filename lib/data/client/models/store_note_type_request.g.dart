// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_note_type_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreNoteTypeRequest _$StoreNoteTypeRequestFromJson(
  Map<String, dynamic> json,
) => StoreNoteTypeRequest(
  notableType: json['notable_type'] as String,
  name: json['name'] as String,
  defaultValue: json['default'] as bool,
  defaultFor: StoreNoteTypeRequestDefaultFor.fromJson(
    json['default_for'] as String,
  ),
  color: json['color'] as String?,
);

Map<String, dynamic> _$StoreNoteTypeRequestToJson(
  StoreNoteTypeRequest instance,
) => <String, dynamic>{
  'color': instance.color,
  'notable_type': instance.notableType,
  'name': instance.name,
  'default': instance.defaultValue,
  'default_for': _$StoreNoteTypeRequestDefaultForEnumMap[instance.defaultFor]!,
};

const _$StoreNoteTypeRequestDefaultForEnumMap = {
  StoreNoteTypeRequestDefaultFor.mod: 'mod',
  StoreNoteTypeRequestDefaultFor.management: 'management',
  StoreNoteTypeRequestDefaultFor.teacher: 'teacher',
  StoreNoteTypeRequestDefaultFor.guardian: 'guardian',
  StoreNoteTypeRequestDefaultFor.student: 'student',
  StoreNoteTypeRequestDefaultFor.$unknown: r'$unknown',
};
