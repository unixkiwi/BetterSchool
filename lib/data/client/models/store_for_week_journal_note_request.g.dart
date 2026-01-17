// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_for_week_journal_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreForWeekJournalNoteRequest _$StoreForWeekJournalNoteRequestFromJson(
  Map<String, dynamic> json,
) => StoreForWeekJournalNoteRequest(
  typeId: (json['type_id'] as num).toInt(),
  description: json['description'] as String,
  forEnum: StoreForWeekJournalNoteRequestForEnum.fromJson(
    json['for'] as String,
  ),
  groupId: (json['group_id'] as num).toInt(),
);

Map<String, dynamic> _$StoreForWeekJournalNoteRequestToJson(
  StoreForWeekJournalNoteRequest instance,
) => <String, dynamic>{
  'type_id': instance.typeId,
  'description': instance.description,
  'for': _$StoreForWeekJournalNoteRequestForEnumEnumMap[instance.forEnum]!,
  'group_id': instance.groupId,
};

const _$StoreForWeekJournalNoteRequestForEnumEnumMap = {
  StoreForWeekJournalNoteRequestForEnum.student: 'student',
  StoreForWeekJournalNoteRequestForEnum.guardian: 'guardian',
  StoreForWeekJournalNoteRequestForEnum.teacher: 'teacher',
  StoreForWeekJournalNoteRequestForEnum.management: 'management',
  StoreForWeekJournalNoteRequestForEnum.self: 'self',
  StoreForWeekJournalNoteRequestForEnum.$unknown: r'$unknown',
};
