// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_journal_lessons_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutJournalLessonsIdResponse _$PutJournalLessonsIdResponseFromJson(
  Map<String, dynamic> json,
) => PutJournalLessonsIdResponse(
  data: JournalLesson.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta88.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutJournalLessonsIdResponseToJson(
  PutJournalLessonsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
