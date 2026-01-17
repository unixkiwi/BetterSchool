// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_journal_days_date_notes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostJournalDaysDateNotesResponse _$PostJournalDaysDateNotesResponseFromJson(
  Map<String, dynamic> json,
) => PostJournalDaysDateNotesResponse(
  data: JournalNote.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta95.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostJournalDaysDateNotesResponseToJson(
  PostJournalDaysDateNotesResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
