// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_journal_note_type_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreJournalNoteTypeRequest _$StoreJournalNoteTypeRequestFromJson(
  Map<String, dynamic> json,
) => StoreJournalNoteTypeRequest(
  name: json['name'] as String,
  defaultValue: json['default'] as bool,
  defaultFor: StoreJournalNoteTypeRequestDefaultFor.fromJson(
    json['default_for'] as String,
  ),
  journalNotableType: json['journal_notable_type'] as String,
  color: json['color'] as String?,
);

Map<String, dynamic> _$StoreJournalNoteTypeRequestToJson(
  StoreJournalNoteTypeRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'color': instance.color,
  'default': instance.defaultValue,
  'default_for':
      _$StoreJournalNoteTypeRequestDefaultForEnumMap[instance.defaultFor]!,
  'journal_notable_type': instance.journalNotableType,
};

const _$StoreJournalNoteTypeRequestDefaultForEnumMap = {
  StoreJournalNoteTypeRequestDefaultFor.student: 'student',
  StoreJournalNoteTypeRequestDefaultFor.guardian: 'guardian',
  StoreJournalNoteTypeRequestDefaultFor.teacher: 'teacher',
  StoreJournalNoteTypeRequestDefaultFor.management: 'management',
  StoreJournalNoteTypeRequestDefaultFor.self: 'self',
  StoreJournalNoteTypeRequestDefaultFor.$unknown: r'$unknown',
};
