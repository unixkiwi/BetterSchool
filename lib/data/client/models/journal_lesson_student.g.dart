// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_lesson_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JournalLessonStudent _$JournalLessonStudentFromJson(
  Map<String, dynamic> json,
) => JournalLessonStudent(
  id: json['id'] as String,
  present: (json['present'] as num).toInt(),
  tooEarly: (json['too_early'] as num?)?.toInt(),
  tooLate: (json['too_late'] as num?)?.toInt(),
  missingHomework: (json['missing_homework'] as num?)?.toInt(),
  missingEquipment: (json['missing_equipment'] as num?)?.toInt(),
  student: json['student'] == null
      ? null
      : Student.fromJson(json['student'] as Map<String, dynamic>),
  ids: json['ids'] as String?,
  absence: json['absence'] == null
      ? null
      : Absence.fromJson(json['absence'] as Map<String, dynamic>),
  teacher: json['teacher'] == null
      ? null
      : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
  lesson: json['lesson'] == null
      ? null
      : JournalLesson.fromJson(json['lesson'] as Map<String, dynamic>),
  journalLessonIds: json['journal_lesson_ids'] as String?,
  notes: (json['notes'] as List<dynamic>?)
      ?.map((e) => JournalNote.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$JournalLessonStudentToJson(
  JournalLessonStudent instance,
) => <String, dynamic>{
  'id': instance.id,
  'student': instance.student,
  'ids': instance.ids,
  'present': instance.present,
  'too_early': instance.tooEarly,
  'too_late': instance.tooLate,
  'missing_homework': instance.missingHomework,
  'missing_equipment': instance.missingEquipment,
  'absence': instance.absence,
  'teacher': instance.teacher,
  'lesson': instance.lesson,
  'journal_lesson_ids': instance.journalLessonIds,
  'notes': instance.notes,
};
