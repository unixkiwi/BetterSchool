// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_journal_lesson_student_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreJournalLessonStudentRequest _$StoreJournalLessonStudentRequestFromJson(
  Map<String, dynamic> json,
) => StoreJournalLessonStudentRequest(
  present: json['present'] as bool,
  studentId: (json['student_id'] as num).toInt(),
  journalLessonId: json['journal_lesson_id'] as String,
  tooEarly: (json['too_early'] as num?)?.toInt(),
  tooLate: (json['too_late'] as num?)?.toInt(),
  missingHomework: json['missing_homework'] as bool?,
  missingEquipment: json['missing_equipment'] as bool?,
  absenceId: (json['absence_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$StoreJournalLessonStudentRequestToJson(
  StoreJournalLessonStudentRequest instance,
) => <String, dynamic>{
  'present': instance.present,
  'too_early': instance.tooEarly,
  'too_late': instance.tooLate,
  'missing_homework': instance.missingHomework,
  'missing_equipment': instance.missingEquipment,
  'student_id': instance.studentId,
  'absence_id': instance.absenceId,
  'journal_lesson_id': instance.journalLessonId,
};
