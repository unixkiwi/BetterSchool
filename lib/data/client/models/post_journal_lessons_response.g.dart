// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_journal_lessons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostJournalLessonsResponse _$PostJournalLessonsResponseFromJson(
  Map<String, dynamic> json,
) => PostJournalLessonsResponse(
  data: JournalLesson.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta86.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostJournalLessonsResponseToJson(
  PostJournalLessonsResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
