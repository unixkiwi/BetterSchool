// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_for_lesson_journal_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreForLessonJournalNoteRequest _$StoreForLessonJournalNoteRequestFromJson(
  Map<String, dynamic> json,
) => StoreForLessonJournalNoteRequest(
  typeId: (json['type_id'] as num).toInt(),
  forEnum: StoreForLessonJournalNoteRequestForEnum.fromJson(
    json['for'] as String,
  ),
  description: json['description'] as String,
);

Map<String, dynamic> _$StoreForLessonJournalNoteRequestToJson(
  StoreForLessonJournalNoteRequest instance,
) => <String, dynamic>{
  'type_id': instance.typeId,
  'for': _$StoreForLessonJournalNoteRequestForEnumEnumMap[instance.forEnum]!,
  'description': instance.description,
};

const _$StoreForLessonJournalNoteRequestForEnumEnumMap = {
  StoreForLessonJournalNoteRequestForEnum.student: 'student',
  StoreForLessonJournalNoteRequestForEnum.guardian: 'guardian',
  StoreForLessonJournalNoteRequestForEnum.teacher: 'teacher',
  StoreForLessonJournalNoteRequestForEnum.management: 'management',
  StoreForLessonJournalNoteRequestForEnum.self: 'self',
  StoreForLessonJournalNoteRequestForEnum.$unknown: r'$unknown',
};
