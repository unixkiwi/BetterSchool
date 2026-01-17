// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_journal_weeks_nr_notes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostJournalWeeksNrNotesResponse _$PostJournalWeeksNrNotesResponseFromJson(
  Map<String, dynamic> json,
) => PostJournalWeeksNrNotesResponse(
  data: JournalNote.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta94.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostJournalWeeksNrNotesResponseToJson(
  PostJournalWeeksNrNotesResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
