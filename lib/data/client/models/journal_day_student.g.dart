// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_day_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JournalDayStudent _$JournalDayStudentFromJson(Map<String, dynamic> json) =>
    JournalDayStudent(
      id: json['id'] as String,
      present: (json['present'] as num).toInt(),
      presentMixed: json['present_mixed'] as String,
      tooEarly: (json['too_early'] as num?)?.toInt(),
      tooLate: (json['too_late'] as num?)?.toInt(),
      dates: json['dates'] as String?,
      student: json['student'] == null
          ? null
          : Student.fromJson(json['student'] as Map<String, dynamic>),
      absence: json['absence'] == null
          ? null
          : Absence.fromJson(json['absence'] as Map<String, dynamic>),
      absenceMixed: json['absence_mixed'] as String?,
      teacher: json['teacher'] == null
          ? null
          : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
      day: json['day'] == null
          ? null
          : JournalDay.fromJson(json['day'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JournalDayStudentToJson(JournalDayStudent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'present': instance.present,
      'present_mixed': instance.presentMixed,
      'too_early': instance.tooEarly,
      'too_late': instance.tooLate,
      'dates': instance.dates,
      'student': instance.student,
      'absence': instance.absence,
      'absence_mixed': instance.absenceMixed,
      'teacher': instance.teacher,
      'day': instance.day,
    };
