// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_journal_lesson_student_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateJournalLessonStudentRequest _$UpdateJournalLessonStudentRequestFromJson(
  Map<String, dynamic> json,
) => UpdateJournalLessonStudentRequest(
  present: json['present'] as bool?,
  tooEarly: (json['too_early'] as num?)?.toInt(),
  tooLate: (json['too_late'] as num?)?.toInt(),
  missingHomework: json['missing_homework'] as bool?,
  missingEquipment: json['missing_equipment'] as bool?,
  absenceId: (json['absence_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$UpdateJournalLessonStudentRequestToJson(
  UpdateJournalLessonStudentRequest instance,
) => <String, dynamic>{
  'present': instance.present,
  'too_early': instance.tooEarly,
  'too_late': instance.tooLate,
  'missing_homework': instance.missingHomework,
  'missing_equipment': instance.missingEquipment,
  'absence_id': instance.absenceId,
};
