// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_journal_days_date_lessons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostJournalDaysDateLessonsResponse _$PostJournalDaysDateLessonsResponseFromJson(
  Map<String, dynamic> json,
) => PostJournalDaysDateLessonsResponse(
  data: JournalLesson.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta85.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostJournalDaysDateLessonsResponseToJson(
  PostJournalDaysDateLessonsResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
