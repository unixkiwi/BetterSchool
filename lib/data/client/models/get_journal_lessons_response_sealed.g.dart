// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_journal_lessons_response_sealed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GetJournalLessonsResponseSealedToJson(
  GetJournalLessonsResponseSealed instance,
) => <String, dynamic>{};

GetJournalLessonsResponseSealedVariant1
_$GetJournalLessonsResponseSealedVariant1FromJson(Map<String, dynamic> json) =>
    GetJournalLessonsResponseSealedVariant1(
      data: (json['data'] as List<dynamic>)
          .map((e) => JournalLesson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetJournalLessonsResponseSealedVariant1ToJson(
  GetJournalLessonsResponseSealedVariant1 instance,
) => <String, dynamic>{'data': instance.data};

GetJournalLessonsResponseSealedVariant2
_$GetJournalLessonsResponseSealedVariant2FromJson(Map<String, dynamic> json) =>
    GetJournalLessonsResponseSealedVariant2(
      data: json['data'] as String,
      meta: Meta87.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetJournalLessonsResponseSealedVariant2ToJson(
  GetJournalLessonsResponseSealedVariant2 instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
