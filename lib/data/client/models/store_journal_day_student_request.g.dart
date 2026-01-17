// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_journal_day_student_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreJournalDayStudentRequest _$StoreJournalDayStudentRequestFromJson(
  Map<String, dynamic> json,
) => StoreJournalDayStudentRequest(
  present: json['present'] as bool,
  studentId: (json['student_id'] as num).toInt(),
  journalDayId: json['journal_day_id'] as String,
  absenceId: (json['absence_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$StoreJournalDayStudentRequestToJson(
  StoreJournalDayStudentRequest instance,
) => <String, dynamic>{
  'present': instance.present,
  'student_id': instance.studentId,
  'absence_id': instance.absenceId,
  'journal_day_id': instance.journalDayId,
};
