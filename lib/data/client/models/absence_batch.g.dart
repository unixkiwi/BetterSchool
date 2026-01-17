// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absence_batch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbsenceBatch _$AbsenceBatchFromJson(Map<String, dynamic> json) => AbsenceBatch(
  id: (json['id'] as num).toInt(),
  singleGroup: json['single_group'] as String,
  students: (json['students'] as List<dynamic>?)
      ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
      .toList(),
  from: json['from'] as String?,
  to: json['to'] as String?,
  note: json['note'] as String?,
  noteTeacher: json['note_teacher'] as String?,
  noteGuardian: json['note_guardian'] as String?,
  recordedAt: json['recorded_at'] as String?,
  type: json['type'] == null
      ? null
      : AbsenceType.fromJson(json['type'] as Map<String, dynamic>),
  teacher: json['teacher'] == null
      ? null
      : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
  batch: json['batch'] == null
      ? null
      : AbsenceBatch.fromJson(json['batch'] as Map<String, dynamic>),
  batchId: (json['batch_id'] as num?)?.toInt(),
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

Map<String, dynamic> _$AbsenceBatchToJson(AbsenceBatch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'single_group': instance.singleGroup,
      'students': instance.students,
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
