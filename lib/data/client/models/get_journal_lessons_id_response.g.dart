// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_journal_lessons_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetJournalLessonsIdResponse _$GetJournalLessonsIdResponseFromJson(
  Map<String, dynamic> json,
) => GetJournalLessonsIdResponse(
  data: JournalLesson.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta89.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetJournalLessonsIdResponseToJson(
  GetJournalLessonsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
