// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_journal_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreJournalNoteRequest _$StoreJournalNoteRequestFromJson(
  Map<String, dynamic> json,
) => StoreJournalNoteRequest(
  journalNotableId: json['journal_notable_id'] as String,
  journalNotableType: json['journal_notable_type'] as String,
  typeId: (json['type_id'] as num).toInt(),
  forEnum: StoreJournalNoteRequestForEnum.fromJson(json['for'] as String),
  description: json['description'] as String,
);

Map<String, dynamic> _$StoreJournalNoteRequestToJson(
  StoreJournalNoteRequest instance,
) => <String, dynamic>{
  'journal_notable_id': instance.journalNotableId,
  'journal_notable_type': instance.journalNotableType,
  'type_id': instance.typeId,
  'for': _$StoreJournalNoteRequestForEnumEnumMap[instance.forEnum]!,
  'description': instance.description,
};

const _$StoreJournalNoteRequestForEnumEnumMap = {
  StoreJournalNoteRequestForEnum.student: 'student',
  StoreJournalNoteRequestForEnum.guardian: 'guardian',
  StoreJournalNoteRequestForEnum.teacher: 'teacher',
  StoreJournalNoteRequestForEnum.management: 'management',
  StoreJournalNoteRequestForEnum.self: 'self',
  StoreJournalNoteRequestForEnum.$unknown: r'$unknown',
};
