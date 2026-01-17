// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Absence _$AbsenceFromJson(Map<String, dynamic> json) => Absence(
  id: (json['id'] as num).toInt(),
  from: json['from'] as String,
  to: json['to'] as String,
  recordedAt: json['recorded_at'] as String?,
  type: AbsenceType.fromJson(json['type'] as Map<String, dynamic>),
  batchId: (json['batch_id'] as num?)?.toInt(),
  note: json['note'] as String?,
  noteTeacher: json['note_teacher'] as String?,
  noteGuardian: json['note_guardian'] as String?,
  teacher: json['teacher'] == null
      ? null
      : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
  batch: json['batch'] == null
      ? null
      : AbsenceBatch.fromJson(json['batch'] as Map<String, dynamic>),
  student: json['student'] == null
      ? null
      : Student.fromJson(json['student'] as Map<String, dynamic>),
  subjects: (json['subjects'] as List<dynamic>?)
      ?.map((e) => Subject.fromJson(e as Map<String, dynamic>))
      .toList(),
  verification: json['verification'] == null
      ? null
      : AbsenceVerification.fromJson(
          json['verification'] as Map<String, dynamic>,
        ),
  lessonStudents: (json['lesson_students'] as List<dynamic>?)
      ?.map((e) => JournalLessonStudent.fromJson(e as Map<String, dynamic>))
      .toList(),
  lessonStudentsCount: json['lesson_students_count'] as String?,
  lessons: (json['lessons'] as List<dynamic>?)
      ?.map((e) => JournalLessonStudent.fromJson(e as Map<String, dynamic>))
      .toList(),
  lessonsCount: json['lessons_count'] as String?,
);

Map<String, dynamic> _$AbsenceToJson(Absence instance) => <String, dynamic>{
  'id': instance.id,
  'from': instance.from,
  'to': instance.to,
  'note': instance.note,
  'note_teacher': instance.noteTeacher,
  'note_guardian': instance.noteGuardian,
  'recorded_at': instance.recordedAt,
  'type': instance.type,
  'teacher': instance.teacher,
  'batch': instance.batch,
  'batch_id': instance.batchId,
  'student': instance.student,
  'subjects': instance.subjects,
  'verification': instance.verification,
  'lesson_students': instance.lessonStudents,
  'lesson_students_count': instance.lessonStudentsCount,
  'lessons': instance.lessons,
  'lessons_count': instance.lessonsCount,
};
