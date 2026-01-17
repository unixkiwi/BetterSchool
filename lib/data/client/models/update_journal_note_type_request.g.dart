// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_journal_note_type_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateJournalNoteTypeRequest _$UpdateJournalNoteTypeRequestFromJson(
  Map<String, dynamic> json,
) => UpdateJournalNoteTypeRequest(
  name: json['name'] as String,
  defaultValue: json['default'] as bool,
  defaultFor: UpdateJournalNoteTypeRequestDefaultFor.fromJson(
    json['default_for'] as String,
  ),
  color: json['color'] as String?,
);

Map<String, dynamic> _$UpdateJournalNoteTypeRequestToJson(
  UpdateJournalNoteTypeRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'color': instance.color,
  'default': instance.defaultValue,
  'default_for':
      _$UpdateJournalNoteTypeRequestDefaultForEnumMap[instance.defaultFor]!,
};

const _$UpdateJournalNoteTypeRequestDefaultForEnumMap = {
  UpdateJournalNoteTypeRequestDefaultFor.student: 'student',
  UpdateJournalNoteTypeRequestDefaultFor.guardian: 'guardian',
  UpdateJournalNoteTypeRequestDefaultFor.teacher: 'teacher',
  UpdateJournalNoteTypeRequestDefaultFor.management: 'management',
  UpdateJournalNoteTypeRequestDefaultFor.self: 'self',
  UpdateJournalNoteTypeRequestDefaultFor.$unknown: r'$unknown',
};
