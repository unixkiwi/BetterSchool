// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_note_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JournalNoteType _$JournalNoteTypeFromJson(Map<String, dynamic> json) =>
    JournalNoteType(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      color: json['color'] as String?,
      defaultValue: (json['default'] as num).toInt(),
      defaultFor: json['default_for'] as String,
      journalNotableType: json['journal_notable_type'] as String,
    );

Map<String, dynamic> _$JournalNoteTypeToJson(JournalNoteType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'default': instance.defaultValue,
      'default_for': instance.defaultFor,
      'journal_notable_type': instance.journalNotableType,
    };
