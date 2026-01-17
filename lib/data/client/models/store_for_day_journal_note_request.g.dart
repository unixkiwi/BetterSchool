// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_for_day_journal_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreForDayJournalNoteRequest _$StoreForDayJournalNoteRequestFromJson(
  Map<String, dynamic> json,
) => StoreForDayJournalNoteRequest(
  typeId: (json['type_id'] as num).toInt(),
  description: json['description'] as String,
  forEnum: StoreForDayJournalNoteRequestForEnum.fromJson(json['for'] as String),
  groupId: (json['group_id'] as num).toInt(),
);

Map<String, dynamic> _$StoreForDayJournalNoteRequestToJson(
  StoreForDayJournalNoteRequest instance,
) => <String, dynamic>{
  'type_id': instance.typeId,
  'description': instance.description,
  'for': _$StoreForDayJournalNoteRequestForEnumEnumMap[instance.forEnum]!,
  'group_id': instance.groupId,
};

const _$StoreForDayJournalNoteRequestForEnumEnumMap = {
  StoreForDayJournalNoteRequestForEnum.student: 'student',
  StoreForDayJournalNoteRequestForEnum.guardian: 'guardian',
  StoreForDayJournalNoteRequestForEnum.teacher: 'teacher',
  StoreForDayJournalNoteRequestForEnum.management: 'management',
  StoreForDayJournalNoteRequestForEnum.self: 'self',
  StoreForDayJournalNoteRequestForEnum.$unknown: r'$unknown',
};
