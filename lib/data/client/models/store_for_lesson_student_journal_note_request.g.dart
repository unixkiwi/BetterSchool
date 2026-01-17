// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_for_lesson_student_journal_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreForLessonStudentJournalNoteRequest
_$StoreForLessonStudentJournalNoteRequestFromJson(Map<String, dynamic> json) =>
    StoreForLessonStudentJournalNoteRequest(
      typeId: (json['type_id'] as num).toInt(),
      forEnum: StoreForLessonStudentJournalNoteRequestForEnum.fromJson(
        json['for'] as String,
      ),
      description: json['description'] as String,
    );

Map<String, dynamic> _$StoreForLessonStudentJournalNoteRequestToJson(
  StoreForLessonStudentJournalNoteRequest instance,
) => <String, dynamic>{
  'type_id': instance.typeId,
  'for':
      _$StoreForLessonStudentJournalNoteRequestForEnumEnumMap[instance
          .forEnum]!,
  'description': instance.description,
};

const _$StoreForLessonStudentJournalNoteRequestForEnumEnumMap = {
  StoreForLessonStudentJournalNoteRequestForEnum.student: 'student',
  StoreForLessonStudentJournalNoteRequestForEnum.guardian: 'guardian',
  StoreForLessonStudentJournalNoteRequestForEnum.teacher: 'teacher',
  StoreForLessonStudentJournalNoteRequestForEnum.management: 'management',
  StoreForLessonStudentJournalNoteRequestForEnum.self: 'self',
  StoreForLessonStudentJournalNoteRequestForEnum.$unknown: r'$unknown',
};
