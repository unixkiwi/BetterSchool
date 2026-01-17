// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteType _$NoteTypeFromJson(Map<String, dynamic> json) => NoteType(
  id: (json['id'] as num).toInt(),
  color: json['color'] as String?,
  name: json['name'] as String,
  notableType: json['notable_type'] as String,
  defaultValue: (json['default'] as num).toInt(),
  defaultFor: json['default_for'] as String,
);

Map<String, dynamic> _$NoteTypeToJson(NoteType instance) => <String, dynamic>{
  'id': instance.id,
  'color': instance.color,
  'name': instance.name,
  'notable_type': instance.notableType,
  'default': instance.defaultValue,
  'default_for': instance.defaultFor,
};
