// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_journal_lesson_student_response_sealed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GetJournalLessonStudentResponseSealedToJson(
  GetJournalLessonStudentResponseSealed instance,
) => <String, dynamic>{};

GetJournalLessonStudentResponseSealedVariant1
_$GetJournalLessonStudentResponseSealedVariant1FromJson(
  Map<String, dynamic> json,
) => GetJournalLessonStudentResponseSealedVariant1(
  data: (json['data'] as List<dynamic>)
      .map((e) => JournalLessonStudent.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetJournalLessonStudentResponseSealedVariant1ToJson(
  GetJournalLessonStudentResponseSealedVariant1 instance,
) => <String, dynamic>{'data': instance.data};

GetJournalLessonStudentResponseSealedVariant2
_$GetJournalLessonStudentResponseSealedVariant2FromJson(
  Map<String, dynamic> json,
) => GetJournalLessonStudentResponseSealedVariant2(
  data: json['data'] as String,
  meta: Meta91.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetJournalLessonStudentResponseSealedVariant2ToJson(
  GetJournalLessonStudentResponseSealedVariant2 instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
