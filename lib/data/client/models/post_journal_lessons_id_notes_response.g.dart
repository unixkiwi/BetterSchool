// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_journal_lessons_id_notes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostJournalLessonsIdNotesResponse _$PostJournalLessonsIdNotesResponseFromJson(
  Map<String, dynamic> json,
) => PostJournalLessonsIdNotesResponse(
  data: JournalNote.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta96.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostJournalLessonsIdNotesResponseToJson(
  PostJournalLessonsIdNotesResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
