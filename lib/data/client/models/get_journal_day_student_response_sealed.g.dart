// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_journal_day_student_response_sealed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GetJournalDayStudentResponseSealedToJson(
  GetJournalDayStudentResponseSealed instance,
) => <String, dynamic>{};

GetJournalDayStudentResponseSealedVariant1
_$GetJournalDayStudentResponseSealedVariant1FromJson(
  Map<String, dynamic> json,
) => GetJournalDayStudentResponseSealedVariant1(
  data: (json['data'] as List<dynamic>)
      .map((e) => JournalDayStudent.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetJournalDayStudentResponseSealedVariant1ToJson(
  GetJournalDayStudentResponseSealedVariant1 instance,
) => <String, dynamic>{'data': instance.data};

GetJournalDayStudentResponseSealedVariant2
_$GetJournalDayStudentResponseSealedVariant2FromJson(
  Map<String, dynamic> json,
) => GetJournalDayStudentResponseSealedVariant2(
  data: json['data'] as String,
  meta: Meta82.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetJournalDayStudentResponseSealedVariant2ToJson(
  GetJournalDayStudentResponseSealedVariant2 instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
